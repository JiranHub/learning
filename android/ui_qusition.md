## 常见UI问题

## 联动Header

沉浸式actonbar：[Material Design 实战 之 第六弹 —— 可折叠式标题栏(CollapsingToolbarLayout) &amp; 系统差异型的功能实现（充分利用系统状态栏空间） - 腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1351960)

代码示例

```xml
<androidx.coordinatorlayout.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:fitsSystemWindows="true">

    <View
        android:layout_width="match_parent"
        android:layout_height="257dp"
        android:background="@drawable/corpus_actionbar_bg"
        android:fitsSystemWindows="true" />

    <com.google.android.material.appbar.AppBarLayout
        android:id="@+id/appbar"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:background="@android:color/transparent">


        <com.google.android.material.appbar.CollapsingToolbarLayout
            android:id="@+id/collapsing_toolbar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            app:contentScrim="?attr/colorPrimary"
            app:expandedTitleMarginEnd="60dp"
            app:expandedTitleMarginStart="48dp"
            app:expandedTitleTextAppearance="@style/TransparentText"
            app:layout_scrollFlags="scroll|exitUntilCollapsed"
            app:title="@string/translation_chat_switch_language">

            <androidx.constraintlayout.widget.ConstraintLayout
                android:layout_width="match_parent"
                android:layout_height="175dp">

                <ImageView
                    android:id="@+id/img"
                    android:layout_width="100dp"
                    android:layout_height="100dp"
                    android:layout_marginStart="25dp"
                    android:layout_marginBottom="16dp"
                    android:scaleType="centerCrop"
                    android:src="@drawable/corpus_img_default_bg"
                    app:layout_collapseMode="pin"
                    app:layout_collapseParallaxMultiplier="0.5"
                    app:layout_constraintBottom_toBottomOf="parent"
                    app:layout_constraintStart_toStartOf="parent" />

                <ImageView
                    android:id="@+id/imgEdit"
                    android:layout_width="21dp"
                    android:layout_height="21dp"
                    android:layout_marginEnd="6dp"
                    android:layout_marginBottom="6dp"
                    android:background="@drawable/icon_title_edit"
                    app:layout_constraintBottom_toBottomOf="@id/img"
                    app:layout_constraintRight_toRightOf="@id/img" />

                <TextView
                    android:id="@+id/title"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:layout_marginStart="18.97dp"
                    android:layout_marginTop="7dp"
                    android:textColor="#333333"
                    android:textSize="16sp"
                    app:layout_constraintLeft_toRightOf="@+id/img"
                    app:layout_constraintTop_toTopOf="@id/img" />

                <ImageView
                    android:id="@+id/editTitleIcon"
                    android:layout_width="11.09dp"
                    android:layout_height="11.09dp"
                    android:background="@drawable/icon_title_edit"
                    app:layout_constraintBottom_toBottomOf="@id/title"
                    app:layout_constraintLeft_toRightOf="@id/title"
                    app:layout_constraintTop_toTopOf="@id/title" />

                <TextView
                    android:id="@+id/subTitle"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:layout_marginStart="18.97dp"
                    android:layout_marginTop="5dp"
                    android:textColor="#666666"
                    android:textSize="12sp"
                    app:layout_constraintLeft_toRightOf="@+id/img"
                    app:layout_constraintTop_toBottomOf="@id/title" />

                <TextView
                    android:id="@+id/editSubTitle"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:layout_marginStart="3dp"
                    android:text="编辑"
                    android:textColor="#2F96ED"
                    android:textSize="12sp"
                    app:layout_constraintBottom_toBottomOf="@id/subTitle"
                    app:layout_constraintLeft_toRightOf="@id/subTitle"
                    app:layout_constraintTop_toTopOf="@id/subTitle" />

                <HorizontalScrollView
                    android:layout_width="0dp"
                    android:layout_height="wrap_content"
                    android:layout_marginStart="18.97dp"
                    android:layout_marginTop="9dp"
                    android:orientation="horizontal"
                    app:layout_constraintLeft_toRightOf="@+id/img"
                    app:layout_constraintRight_toRightOf="parent"
                    app:layout_constraintTop_toBottomOf="@id/subTitle">

                    <LinearLayout
                        android:id="@+id/tagRoot"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:orientation="horizontal" />
                </HorizontalScrollView>


            </androidx.constraintlayout.widget.ConstraintLayout>


            <!--            <LinearLayout-->
            <!--                android:orientation="vertical"-->
            <!--                app:layout_collapseMode="pin"-->
            <!--                android:layout_width="match_parent"-->
            <!--                android:layout_height="wrap_content">-->
            <!--                <View-->
            <!--                    android:layout_width="match_parent"-->
            <!--                    android:layout_height="30dp" />-->

            <androidx.appcompat.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_width="match_parent"
                android:layout_height="?android:attr/actionBarSize"
                app:layout_collapseMode="pin">

                <!--                    <LinearLayout-->
                <!--                        android:layout_width="match_parent"-->
                <!--                        android:layout_height="?android:attr/actionBarSize"-->
                <!--                        android:layout_gravity="bottom"-->
                <!--                        android:background="@android:color/transparent"-->
                <!--                        android:orientation="horizontal"-->
                <!--                        app:layout_collapseMode="pin">-->

                <!--                        <ImageView-->
                <!--                            android:id="@+id/back"-->
                <!--                            android:layout_width="15dp"-->
                <!--                            android:layout_height="15dp"-->
                <!--                            android:background="@drawable/ic_launcher_background" />-->

                <!--                        <TextView-->
                <!--                            android:id="@+id/toolbar_title"-->
                <!--                            android:layout_width="wrap_content"-->
                <!--                            android:layout_height="wrap_content"-->
                <!--                            android:text="新春" />-->

                <!--                        <View-->
                <!--                            android:layout_width="0dp"-->
                <!--                            android:layout_height="wrap_content"-->
                <!--                            android:layout_weight="1" />-->

                <!--                        <ImageView-->
                <!--                            android:id="@+id/report"-->
                <!--                            android:layout_width="15dp"-->
                <!--                            android:layout_height="15dp"-->
                <!--                            android:background="@drawable/ic_launcher_background" />-->

                <!--                        <ImageView-->
                <!--                            android:id="@+id/share"-->
                <!--                            android:layout_width="15dp"-->
                <!--                            android:layout_height="15dp"-->
                <!--                            android:background="@drawable/ic_launcher_background" />-->
                <!--                    </LinearLayout>-->
            </androidx.appcompat.widget.Toolbar>
            <!--            </LinearLayout>-->

        </com.google.android.material.appbar.CollapsingToolbarLayout>


    </com.google.android.material.appbar.AppBarLayout>

    <androidx.core.widget.NestedScrollView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <TextView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:text="@string/large_text"
            android:textSize="20sp" />

    </androidx.core.widget.NestedScrollView>

</androidx.coordinatorlayout.widget.CoordinatorLayout>
```





扩大点击区域

```kotlin
fun View.expendTouchArea(expendSize: Int) {
    val parentView = parent as View
    parentView.post {
        val rect = Rect()
        getHitRect(rect)
        rect.left -= expendSize
        rect.top -= expendSize
        rect.right += expendSize
        rect.bottom += expendSize
        parentView.touchDelegate = TouchDelegate(rect, this)
    }
}
```
