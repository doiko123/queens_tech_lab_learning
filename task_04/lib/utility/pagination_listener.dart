import 'package:flutter/material.dart';

class PaginationListener {
  // 非同期通信中かどうかのフラグ
  bool _isLoading = false;

  // スクロール量を検知して与えられた処理を実行する
  void perform({
    required ScrollController scrollController,
    required VoidCallback fetchData, // スクロール時に実行したい処理（投稿取得 or メッセージ取得）
  }) {
    scrollController.addListener(() async {
      // 画面のスクロール範囲に対するスクロール量
      final scrollRatio =
          scrollController.offset / scrollController.position.maxScrollExtent;
      // データを追加取得するかどうかのしきい値
      const threshold = 0.8;
      // 8割を超えてスクロールした場合 かつ 現在通信中ではない場合に渡された処理を実行
      // （fetchData()は非同期で走るため、通信中 = 取得が完了するまでの間は重複してリクエストを飛ばさないようにしている）
      if (scrollRatio >= threshold && !_isLoading) {
        _isLoading = true;
        // TODO(doiko): fetchData()の処理を待ってから_isLoading = falseを呼ぶようにしたい
        fetchData();
      }
      _isLoading = false;
    });
  }
}
