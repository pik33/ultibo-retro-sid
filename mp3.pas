unit mp3;

{$mode objfpc}{$H+}

// This is the wrapper unit for minimp3 C library
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

{$linklib minimp3}
{$linklib m}

//function pow(a,b:double):double; cdecl; external 'libm' name 'pow';
function mp3_create:pointer; cdecl; external 'libminimp3' name 'mp3_create';
function mp3_decode(dec:mp3_decoder_p;buf:pointer; bytes:integer; oout:pointer;info:pointer):integer; cdecl; external 'libminimp3' name 'mp3_decode';
procedure mp3_done(dec:mp3_decoder_p) external 'libminimp3' name 'mp3_done';

// To use this:
// - call mp3_create, it returns mp3 decoder handle
// - repeat calling mp3decode until decoding is done
// - call mp3_done
// Buf is the pointer to input buffer, bytes is length of input buffer, oout is pointer to output buffer, info is pointer to info structure

implementation

begin
end.
