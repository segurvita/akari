require_relative "test_helper"

class AkariTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Akari::VERSION
  end

  def test_it_can_compile_to_bf
    akari = "ピロリンッハロー！悪い子ちゃんヤミいきま→しょう！卍あ、カラスだおけまる"
    bf = ">+<-[].,"
    assert_equal bf, Akari.compile_to_bf(akari)
  end

  def test_it_can_run
    akari = <<-EOS
      ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
      いきま→しょう！ピロリンッハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
      ハロー！ハロー！ピロリンッハロー！ハロー！ハロー！ハロー！ハロー！ハロー！
      ハロー！ハロー！ハロー！ハロー！ハロー！ピロリンッハロー！ハロー！ハロー！
      ハロー！ハロー！悪い子ちゃん悪い子ちゃん悪い子ちゃんヤミ卍ピロリンッ
      あ、カラスだピロリンッハロー！ハロー！あ、カラスだハロー！ハロー！ハロー！
      ハロー！ハロー！ハロー！ハロー！あ、カラスだあ、カラスだハロー！ハロー！
      ハロー！あ、カラスだピロリンッヤミあ、カラスだヤミヤミヤミヤミヤミヤミヤミ
      ヤミヤミヤミヤミヤミあ、カラスだ悪い子ちゃんハロー！ハロー！ハロー！
      ハロー！ハロー！ハロー！ハロー！ハロー！あ、カラスだヤミヤミヤミヤミヤミ
      ヤミヤミヤミあ、カラスだハロー！ハロー！ハロー！あ、カラスだヤミヤミヤミ
      ヤミヤミヤミあ、カラスだヤミヤミヤミヤミヤミヤミヤミヤミあ、カラスだ
      ピロリンッハロー！あ、カラスだ"
    EOS

    stdout = "Hello, world!"
    assert_equal stdout, Akari.run(akari)
  end
end
