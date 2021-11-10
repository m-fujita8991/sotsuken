$('.slider').slick({
    autoplay: true,
    dots: false,
    arrows: false,
    infinite: true,
    fade: true,
    cssEase: 'linear',
    pauseOnFocus: false,
    pauseOnHover: false,
    pauseOnDotsHover: false
  });

  	// 各地域ごとの都道府県の配列を設定
    var tohoku = { 0: '全域', 1: '北海道', 2: '青森県', 3: '岩手県', 4: '宮城県', 5: '秋田県', 6: '山形県', 7: '福島県' };
    var kanto = { 0: '全域', 8: '茨城県', 9: '栃木県', 10: '群馬県', 11: '埼玉県', 12: '千葉県', 13: '東京都', 14: '神奈川県' };
    var chubu = { 0: '全域', 15: '新潟県', 16: '富山県', 17: '石川県', 18: '福井県', 19: '山梨県', 20: '長野県', 21: '岐阜県', 22: '静岡県', 23: '愛知県' };
    var kinki = { 0: '全域', 24: '三重県', 25: '滋賀県', 26: '京都府', 27: '大阪府', 28: '兵庫県', 29: '奈良県', 30: '和歌山県' };
    var chugoku = { 0: '全域', 31: '鳥取県', 32: '島根県', 33: '岡山県', 34: '広島県', 35: '山口県', 36: '徳島県', 37: '香川県', 38: '愛媛県', 39: '高知県' };
    var kyushu = { 0: '全域', 40: '福岡県', 41: '佐賀県', 42: '長崎県', 43: '熊本県', 44: '大分県', 45: '宮崎県', 46: '鹿児島県', 47: '沖縄県' };
    // 各地域を配列にまとめる
    var areaArray = [tohoku, kanto, chubu, kinki, chugoku, kyushu];

    $(function () {
      // 地域選択用セレクトボックスが切り替わったら発動
      $('#areaSelect').change(function () {
        // 一旦、都道府県選択用セレクトボックスのoptionを消去
        $('#pref > option').remove();
        //　地域選択用セレクトボックスの値を取得
        var val = $(this).val();
        // 選択したvalue値を変数に格納
        var selectedArea = areaArray[val];
        // 選択した地域の都道府県をセレクトボックスのoptionに追加
        $.each(selectedArea, function (index, value) {
          $('#pref').append($('<option>').html(value).val(index));
        })	
      });
    });