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
end
