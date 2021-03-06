module Organizations
  module Imageable
    extend ActiveSupport::Concern

    def icon_images(wrapped = false)
      list = images.metadata_format(ENUMS::IMAGE_FORMATS::ICON)
      return list unless wrapped
      list.map { |i| Image.new(i) }
    end

    def small_images(wrapped = false)
      list = images.metadata_format(ENUMS::IMAGE_FORMATS::SMALL)
      return list unless wrapped
      list.map { |i| Image.new(i) }
    end

    def large_images(wrapped = false)
      list = images.metadata_format(ENUMS::IMAGE_FORMATS::LARGE)
      return list unless wrapped
      list.map { |i| Image.new(i) }
    end

    def wide_images(wrapped = false)
      list = images.metadata_format(ENUMS::IMAGE_FORMATS::WIDE)
      return list unless wrapped
      list.map { |i| Image.new(i) }
    end

    def sponsor_images(wrapped = false)
      list = images.metadata_format(ENUMS::IMAGE_FORMATS::SPONSOR)
      return list unless wrapped
      list.map { |i| Image.new(i) }
    end
  end
end
