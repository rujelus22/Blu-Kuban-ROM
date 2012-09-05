.class public Lcom/sec/android/app/servicemodeapp/RTCTimeRead;
.super Landroid/app/Activity;
.source "RTCTimeRead.java"


# instance fields
.field private i:I

.field private mBackButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field private mRtcMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->i:I

    .line 22
    new-instance v0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$1;-><init>(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;-><init>(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->printCurrentRTCInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method private printCurrentRTCInfo()V
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 56
    .local v1, calendar:Ljava/util/Calendar;
    const-string v2, "      %04d/%02d/%02d,%02d:%02d:%02d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, CurRTC:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mRtcMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->setContentView(I)V

    .line 73
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mRtcMsg:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mBackButton:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    return-void
.end method
