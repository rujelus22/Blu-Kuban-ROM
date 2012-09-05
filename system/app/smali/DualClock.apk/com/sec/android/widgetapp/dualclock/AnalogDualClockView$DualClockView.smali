.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;
.super Ljava/lang/Object;
.source "AnalogDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualClockView"
.end annotation


# instance fields
.field dualclock_home_bg_image:Landroid/widget/ImageView;

.field dualclock_home_center_image:Landroid/widget/ImageView;

.field dualclock_home_city_dst_image:Landroid/widget/ImageView;

.field dualclock_home_city_text:Landroid/widget/TextView;

.field dualclock_home_city_text_with_dst:Landroid/widget/TextView;

.field dualclock_home_hour_image:Landroid/widget/ImageView;

.field dualclock_home_min_image:Landroid/widget/ImageView;

.field dualclock_home_sec_image:Landroid/widget/ImageView;

.field dualclock_second_bg_image:Landroid/widget/ImageView;

.field dualclock_second_center_image:Landroid/widget/ImageView;

.field dualclock_second_city_dst_image:Landroid/widget/ImageView;

.field dualclock_second_city_text:Landroid/widget/TextView;

.field dualclock_second_city_text_with_dst:Landroid/widget/TextView;

.field dualclock_second_hour_image:Landroid/widget/ImageView;

.field dualclock_second_min_image:Landroid/widget/ImageView;

.field dualclock_second_plus_image:Landroid/widget/ImageView;

.field dualclock_second_plus_text:Landroid/widget/TextView;

.field dualclock_second_sec_image:Landroid/widget/ImageView;

.field secCenterBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V
    .registers 5
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    const v1, 0x7f0a0003

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_bg_image:Landroid/widget/ImageView;

    .line 761
    const v1, 0x7f0a000e

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_bg_image:Landroid/widget/ImageView;

    .line 762
    const v1, 0x7f0a0004

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_hour_image:Landroid/widget/ImageView;

    .line 763
    const v1, 0x7f0a000f

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_hour_image:Landroid/widget/ImageView;

    .line 764
    const v1, 0x7f0a0005

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_min_image:Landroid/widget/ImageView;

    .line 765
    const v1, 0x7f0a0010

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_min_image:Landroid/widget/ImageView;

    .line 766
    const v1, 0x7f0a0006

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_sec_image:Landroid/widget/ImageView;

    .line 767
    const v1, 0x7f0a0011

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_sec_image:Landroid/widget/ImageView;

    .line 768
    const v1, 0x7f0a0007

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_center_image:Landroid/widget/ImageView;

    .line 769
    const v1, 0x7f0a0012

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_center_image:Landroid/widget/ImageView;

    .line 770
    const v1, 0x7f0a0009

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text:Landroid/widget/TextView;

    .line 771
    const v1, 0x7f0a000a

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text_with_dst:Landroid/widget/TextView;

    .line 772
    const v1, 0x7f0a000b

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_dst_image:Landroid/widget/ImageView;

    .line 773
    const v1, 0x7f0a0014

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    .line 774
    const v1, 0x7f0a0015

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text_with_dst:Landroid/widget/TextView;

    .line 775
    const v1, 0x7f0a0016

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_dst_image:Landroid/widget/ImageView;

    .line 776
    const v1, 0x7f0a0019

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_text:Landroid/widget/TextView;

    .line 777
    const v1, 0x7f0a0018

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_plus_image:Landroid/widget/ImageView;

    .line 778
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_bg_image:Landroid/widget/ImageView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_home:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$400(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_bg_image:Landroid/widget/ImageView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_second:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$500(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_home_city_text:Landroid/widget/TextView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_home:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$400(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->dualclock_second_city_text:Landroid/widget/TextView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mClickListener_second:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$500(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 784
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 785
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 786
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;->secCenterBmp:Landroid/graphics/Bitmap;

    .line 788
    return-void
.end method
