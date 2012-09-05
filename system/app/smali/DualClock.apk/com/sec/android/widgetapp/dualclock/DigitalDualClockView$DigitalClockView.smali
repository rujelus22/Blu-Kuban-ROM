.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;
.super Ljava/lang/Object;
.source "DigitalDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitalClockView"
.end annotation


# instance fields
.field private clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

.field private dst_icons:[I

.field private iv_add:Landroid/widget/ImageView;

.field private iv_colon:Landroid/widget/ImageView;

.field private iv_dst:Landroid/widget/ImageView;

.field private iv_dst_with_dst_ampm:Landroid/widget/ImageView;

.field private iv_hour01:Landroid/widget/ImageView;

.field private iv_hour02:Landroid/widget/ImageView;

.field private iv_minute01:Landroid/widget/ImageView;

.field private iv_minute02:Landroid/widget/ImageView;

.field private listener_:Landroid/view/View$OnClickListener;

.field private ll_background:Landroid/widget/LinearLayout;

.field private ll_city:Landroid/widget/LinearLayout;

.field private ll_city_and_clock:Landroid/widget/LinearLayout;

.field private ll_city_with_ampm:Landroid/widget/LinearLayout;

.field private ll_city_with_dst:Landroid/widget/LinearLayout;

.field private ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

.field private ll_clickable:Landroid/widget/LinearLayout;

.field private ll_set_city:Landroid/widget/LinearLayout;

.field private mBackground:[I

.field private mRegion:I

.field private mbVisible:Z

.field private numbers:[I

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

.field private tv_ampm:Landroid/widget/TextView;

.field private tv_ampm_with_dst:Landroid/widget/TextView;

.field private tv_city:Landroid/widget/TextView;

.field private tv_city_with_ampm:Landroid/widget/TextView;

.field private tv_city_with_dst:Landroid/widget/TextView;

.field private tv_city_with_dst_ampm:Landroid/widget/TextView;

.field private tv_set_city:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;IIZ)V
    .registers 8
    .parameter
    .parameter "rotate"
    .parameter "region"
    .parameter "visible"

    .prologue
    .line 671
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->listener_:Landroid/view/View$OnClickListener;

    .line 674
    iput p3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    .line 675
    iput-boolean p4, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mbVisible:Z

    .line 676
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->BACKGROUND:[[I

    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mBackground:[I

    .line 677
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->NUMBERS:[I

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->numbers:[I

    .line 678
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_ICONS:[I

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->dst_icons:[I

    .line 679
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    .line 680
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->BG_LAYOUT:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_background:Landroid/widget/LinearLayout;

    .line 681
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->TOUCH_LAYOUT:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_clickable:Landroid/widget/LinearLayout;

    .line 682
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city:Landroid/widget/LinearLayout;

    .line 683
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_DST:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst:Landroid/widget/LinearLayout;

    .line 684
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_AMPM:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_ampm:Landroid/widget/LinearLayout;

    .line 685
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_DST_AMPM:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

    .line 686
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city:Landroid/widget/TextView;

    .line 687
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_DST:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_dst:Landroid/widget/TextView;

    .line 688
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_IMAGE:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_dst:Landroid/widget/ImageView;

    .line 689
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_AMPM:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_ampm:Landroid/widget/TextView;

    .line 690
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_DST_AMPM:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_dst_ampm:Landroid/widget/TextView;

    .line 691
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_IMAGE_WITH_DST_AMPM:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_dst_with_dst_ampm:Landroid/widget/ImageView;

    .line 692
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->AMPM_TEXT:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm:Landroid/widget/TextView;

    .line 693
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->AMPM_TEXT_WITH_DST:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm_with_dst:Landroid/widget/TextView;

    .line 694
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->HH_1ST:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour01:Landroid/widget/ImageView;

    .line 695
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->HH_2ND:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour02:Landroid/widget/ImageView;

    .line 696
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->COLON:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_colon:Landroid/widget/ImageView;

    .line 697
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->MM_1ST:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_minute01:Landroid/widget/ImageView;

    .line 698
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->MM_2ND:[I

    aget v0, v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_minute02:Landroid/widget/ImageView;

    .line 699
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_clickable:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->listener_:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_background:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mBackground:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 703
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_169

    .line 704
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_and_clock:Landroid/widget/LinearLayout;

    .line 705
    const v0, 0x7f0a002e

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_set_city:Landroid/widget/LinearLayout;

    .line 706
    const v0, 0x7f0a0030

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_set_city:Landroid/widget/TextView;

    .line 707
    const v0, 0x7f0a002f

    invoke-virtual {p1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_add:Landroid/widget/ImageView;

    .line 708
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_set_city:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_add:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 713
    :cond_169
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 629
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_add:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V
    .registers 5
    .parameter "name"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 744
    return-void
.end method

.method public setVisibility(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 721
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mbVisible:Z

    .line 724
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    .line 725
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_set_city:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mbVisible:Z

    if-nez v0, :cond_1d

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_and_clock:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mbVisible:Z

    if-eqz v3, :cond_1f

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    :cond_1c
    return-void

    :cond_1d
    move v0, v2

    .line 725
    goto :goto_10

    :cond_1f
    move v1, v2

    .line 727
    goto :goto_19
.end method

.method public update(Z)V
    .registers 17
    .parameter "forced"

    .prologue
    .line 748
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 751
    .local v0, b24HourFormat:Z
    iget-boolean v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mbVisible:Z

    if-nez v12, :cond_32

    .line 753
    iget v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_31

    .line 754
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_set_city:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-virtual {v13}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_add:Landroid/widget/ImageView;

    const v13, 0x7f020002

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 870
    :cond_31
    :goto_31
    return-void

    .line 762
    :cond_32
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->getCalendar()Ljava/util/Calendar;

    move-result-object v12

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 763
    .local v4, hour:I
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->getCalendar()Ljava/util/Calendar;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 766
    .local v7, minute:I
    const/4 v12, 0x6

    if-le v4, v12, :cond_f3

    const/16 v12, 0x12

    if-ge v4, v12, :cond_f3

    .line 767
    const/4 v5, 0x0

    .line 773
    .local v5, idx_day_night:I
    :goto_52
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_background:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mBackground:[I

    aget v13, v13, v5

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 777
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->getDSTOffset()I

    move-result v1

    .line 778
    .local v1, dst_offset:I
    const/4 v10, 0x0

    .line 779
    .local v10, tv_real_city:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 781
    .local v6, iv_real_dst:Landroid/widget/ImageView;
    const/4 v12, 0x1

    if-ne v0, v12, :cond_112

    .line 783
    div-int/lit8 v2, v4, 0xa

    .line 784
    .local v2, hh1:I
    rem-int/lit8 v3, v4, 0xa

    .line 785
    .local v3, hh2:I
    div-int/lit8 v8, v7, 0xa

    .line 786
    .local v8, mm1:I
    rem-int/lit8 v9, v7, 0xa

    .line 788
    .local v9, mm2:I
    if-lez v1, :cond_f6

    .line 789
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_dst:Landroid/widget/TextView;

    .line 790
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_dst:Landroid/widget/ImageView;

    .line 791
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 794
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    :goto_8c
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 843
    .local v11, tv_real_city_string:Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->getZoneName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b1

    .line 844
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->clock_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->getZoneName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_b1
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    if-lez v1, :cond_c4

    .line 849
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->dst_icons:[I

    add-int/lit8 v13, v1, -0x1

    aget v12, v12, v13

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 850
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 856
    :cond_c4
    if-nez v0, :cond_183

    if-nez v2, :cond_183

    .line 857
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour01:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    :goto_ce
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour02:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->numbers:[I

    aget v13, v13, v3

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 866
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_colon:Landroid/widget/ImageView;

    const v13, 0x7f02000e

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 867
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_minute01:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->numbers:[I

    aget v13, v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_minute02:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->numbers:[I

    aget v13, v13, v9

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_31

    .line 769
    .end local v1           #dst_offset:I
    .end local v2           #hh1:I
    .end local v3           #hh2:I
    .end local v5           #idx_day_night:I
    .end local v6           #iv_real_dst:Landroid/widget/ImageView;
    .end local v8           #mm1:I
    .end local v9           #mm2:I
    .end local v10           #tv_real_city:Landroid/widget/TextView;
    .end local v11           #tv_real_city_string:Ljava/lang/String;
    :cond_f3
    const/4 v5, 0x1

    .restart local v5       #idx_day_night:I
    goto/16 :goto_52

    .line 796
    .restart local v1       #dst_offset:I
    .restart local v2       #hh1:I
    .restart local v3       #hh2:I
    .restart local v6       #iv_real_dst:Landroid/widget/ImageView;
    .restart local v8       #mm1:I
    .restart local v9       #mm2:I
    .restart local v10       #tv_real_city:Landroid/widget/TextView;
    :cond_f6
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city:Landroid/widget/TextView;

    .line 797
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 798
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8c

    .line 805
    .end local v2           #hh1:I
    .end local v3           #hh2:I
    .end local v8           #mm1:I
    .end local v9           #mm2:I
    :cond_112
    const/16 v12, 0xb

    if-le v4, v12, :cond_155

    .line 806
    if-lez v1, :cond_14d

    .line 807
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm_with_dst:Landroid/widget/TextView;

    const-string v13, "PM"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_11f
    rem-int/lit8 v4, v4, 0xc

    .line 818
    if-nez v4, :cond_125

    .line 819
    const/16 v4, 0xc

    .line 821
    :cond_125
    div-int/lit8 v2, v4, 0xa

    .line 822
    .restart local v2       #hh1:I
    rem-int/lit8 v3, v4, 0xa

    .line 823
    .restart local v3       #hh2:I
    div-int/lit8 v8, v7, 0xa

    .line 824
    .restart local v8       #mm1:I
    rem-int/lit8 v9, v7, 0xa

    .line 826
    .restart local v9       #mm2:I
    if-lez v1, :cond_167

    .line 827
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_dst_ampm:Landroid/widget/TextView;

    .line 828
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_dst_with_dst_ampm:Landroid/widget/ImageView;

    .line 829
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 831
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8c

    .line 809
    .end local v2           #hh1:I
    .end local v3           #hh2:I
    .end local v8           #mm1:I
    .end local v9           #mm2:I
    :cond_14d
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm:Landroid/widget/TextView;

    const-string v13, "PM"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 811
    :cond_155
    if-lez v1, :cond_15f

    .line 812
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm_with_dst:Landroid/widget/TextView;

    const-string v13, "AM"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 814
    :cond_15f
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_ampm:Landroid/widget/TextView;

    const-string v13, "AM"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 834
    .restart local v2       #hh1:I
    .restart local v3       #hh2:I
    .restart local v8       #mm1:I
    .restart local v9       #mm2:I
    :cond_167
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->tv_city_with_ampm:Landroid/widget/TextView;

    .line 835
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 837
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->ll_city_with_dst_ampm:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8c

    .line 859
    .restart local v11       #tv_real_city_string:Ljava/lang/String;
    :cond_183
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour01:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    iget-object v12, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_hour01:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->numbers:[I

    aget v13, v13, v2

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_ce
.end method
