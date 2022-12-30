/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// This object represents a sticker set.
///
/// https://core.telegram.org/bots/api#stickerset
@JsonSerializable()
class StickerSet {
  String name;
  String title;
  String sticker_type;
  bool is_animated;
  bool is_video;
  List<Sticker> stickers;
  PhotoSize? thumb;
  StickerSet({
    required this.name,
    required this.title,
    required this.sticker_type,
    required this.is_animated,
    required this.is_video,
    required this.stickers,
    this.thumb,
  });
  factory StickerSet.fromJson(Map<String, dynamic> json) =>
      _$StickerSetFromJson(json);
  Map<String, dynamic> toJson() => _$StickerSetToJson(this);
}
