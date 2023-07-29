# frozen_string_literal: true

require_relative "hindi_to_english_converter/version"

module HindiToEnglishConverter
  def hindi_to_hinglish

      hin_consonants = { क: 'k', ख: 'kh', ग: 'g', घ: 'gh', ङ: 'ṅ', च: 'c', छ: 'ch', ज: 'j', झ: 'jh', ञ: 'n', ट: 't', ठ: 'th', ड: 'd', ढ: 'dh', ण: 'n', त: 't', थ: 'th', द: 'd', ध: 'dh', न: 'n', प: 'p', फ: 'ph', ब: 'b', भ: 'bh', म: 'm', य: 'y', र: 'r', ल: 'l', व: 'v', श: 'sh', ष: 'sh', स: 's', ह: 'h', क्ष: 'ksh', त्र: 'tr', ज्ञ: 'gy' }
      hin_vowels = { अ: 'a', आ: 'a', इ: 'i', ई: 'ee', उ: 'u', ऊ: 'oo', ऋ: 'ri', ॠ: 'ri', ऌ: 'li', ॡ: 'li', ए: 'e', ऐ: 'ai', ओ: 'o', औ: 'au', अं: 'an', अः: 'an', अँ: 'an' }
      hin_matras = { ा: 'a', ि: 'i', ी: 'ee', ु: 'u', ू: 'oo', ृ: 'ri', ॄ: 'ri', ॢ: 'li', ॣ: 'li', े: 'e', ै: 'ai', ो: 'o', ौ: 'au', ं: 'an', ः: 'an', ँ: 'an' }
      extra_r = { ्: "r" }

      n_a = self.split('')

      c_n = ''
      n_a.each_with_index do |n, index|

        if hin_consonants.key?(n.to_sym)
          c_n += hin_consonants[n.to_sym]
          if n_a.length > index
            next_obj = n_a[index + 1]
            unless next_obj == nil
              unless hin_matras.key?(next_obj.to_sym)
                unless extra_r.key?(next_obj.to_sym)
                  c_n += 'a'
                end
              end
            end
          end
        end

        if hin_vowels.key?(n.to_sym)
          c_n += hin_vowels[n.to_sym]
        end

        if hin_matras.key?(n.to_sym)
          c_n += hin_matras[n.to_sym]
        end
      end
      return c_n
  end


end
