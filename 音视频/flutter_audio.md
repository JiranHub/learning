# flutter 音频处理



## plugins

- audioplayers
  
  - [audioplayers | Flutter Package](https://pub.dev/packages/audioplayers)
  
  - https://github.com/bluefireteam/audioplayers
  
  - 原理：通过channel接口，各平台分别实现对应player
  
  - 优势：以兼容全平台
  
  - 缺点：部分接口各平台未完全兼容，如：ByteSource.play()

- just_audio
  
  - [just_audio | Flutter Package](https://pub.dev/packages/just_audio)
  
  - https://github.com/ryanheise/just_audio/issues/97
  
  - 原理：
  
  - 优势：平台及功能兼容全面，详情：[平台兼容详情](https://pub.dev/packages/just_audio#platform-support)
  
  - 缺点：



Android 波形图、振幅、频率API

- https://developer.android.com/reference/android/media/audiofx/Visualizer#getFft(byte[])



处理波形图新思路：

- 音频播放使用三方插件来兼容各平台播放控制

- 使用自研纯dart获取fft等波形相关处理


