unit mp3;

{$mode objfpc}{$H+}

// This is the wrapper unit for minimp3  and kjmp2 C libraries
// Piotr Kardasz, pik33@o2.pl, 20170208

// Here is the original minimp3 license:
// -----------------------------------------------------------------------------
// *
// * MPEG Audio Layer III decoder
// * Copyright (c) 2001, 2002 Fabrice Bellard,
// *           (c) 2007 Martin J. Fiedler
// *
// * This file is a stripped-down version of the MPEG Audio decoder from
// * the FFmpeg libavcodec library.
// *
// * FFmpeg and minimp3 are free software; you can redistribute it and/or
// * modify it under the terms of the GNU Lesser General Public
// * License as published by the Free Software Foundation; either
// * version 2.1 of the License, or (at your option) any later version.
// *
// * FFmpeg and minimp3 are distributed in the hope that it will be useful,
// * but WITHOUT ANY WARRANTY; without even the implied warranty of
// * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// * Lesser General Public License for more details.
//*
// * You should have received a copy of the GNU Lesser General Public
// * License along with FFmpeg; if not, write to the Free Software
// * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
// -----------------------------------------------------------------------------/
//
// -- The original kjmp2 license
//
//******************************************************************************
//** kjmp2 -- a minimal MPEG-1/2 Audio Layer II decoder library                **
//** version 1.1                                                               **
//*******************************************************************************
//** Copyright (C) 2006-2013 Martin J. Fiedler <martin.fiedler@gmx.net>        **
//**                                                                           **
//** This software is provided 'as-is', without any express or implied         **
//** warranty. In no event will the authors be held liable for any damages     **
//** arising from the use of this software.                                    **
//**                                                                           **
//** Permission is granted to anyone to use this software for any purpose,     **
//** including commercial applications, and to alter it and redistribute it    **
//** freely, subject to the following restrictions:                            **
//**   1. The origin of this software must not be misrepresented; you must not **
//**      claim that you wrote the original software. If you use this software **
//**      in a product, an acknowledgment in the product documentation would   **
//**      be appreciated but is not required.                                  **
//**   2. Altered source versions must be plainly marked as such, and must not **
//**      be misrepresented as being the original software.                    **
//**   3. This notice may not be removed or altered from any source            **
//**      distribution.                                                        **
//******************************************************************************/
//


interface

uses syscalls;

type
mp3_decoder_p=^mp3_decoder_t;
mp3_decoder_t=pointer;

mp3_info_t=record
   sample_rate:integer;
   channels:integer;
   audio_bytes:integer;  // generated amount of audio per frame
   end;

kjmp2_context_p=^kjmp2_context_t;
kjmp2_context_t=record
    id:integer;
    V: array[0..1,0..1023] of integer;
    Voffs:integer;
    end;


{$linklib drflac}
{$linklib mad}
{$linklib minimp3}
{$linklib kjmp2}
{$linklib m}

function drflac_open_file(filename:pchar):pointer; cdecl; external 'libdrflac' name 'drflac_open_file';

function mp3_create:pointer; cdecl; external 'libminimp3' name 'mp3_create';
function mp3_decode(dec:mp3_decoder_p;buf:pointer; bytes:integer; oout:pointer;info:pointer):integer; cdecl; external 'libminimp3' name 'mp3_decode';
procedure mp3_done(dec:mp3_decoder_p) external 'libminimp3' name 'mp3_done';
function mp3_test:double; external 'libminimp3' name 'test';

procedure kjmp2_init(mp2: kjmp2_context_p); external 'libkjmp2' name 'kjmp2_init';
function kjmp2_get_sample_rate(frame:PByte):integer; external 'libkjmp2' name 'kjmp2_get_sample_rate';
function kjmp2_decode_frame(mp2:kjmp2_context_p; frame:PByte; pcm:PSmallInt):cardinal; external 'libkjmp2' name 'kjmp2_decode_frame';

// To use this:
// - call mp3_create, it returns mp3 decoder handle
// - repeat calling mp3decode until decoding is done
// - call mp3_done
// Buf is the pointer to input buffer, bytes is length of input buffer, oout is pointer to output buffer, info is pointer to info structure

implementation

begin
end.
