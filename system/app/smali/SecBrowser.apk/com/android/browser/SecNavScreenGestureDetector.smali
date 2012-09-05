.class Lcom/android/browser/SecNavScreenGestureDetector;
.super Ljava/lang/Object;
.source "SecNavScreenGestureDetector.java"

# interfaces
.implements Landroid/webkit/PinchZoomListener;


# static fields
.field private static final NAVSCREENGESTUREDEBUG:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCheckMobilePage:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPrevSpan:F

.field private mShouldGoNaveScreen:Z

.field private mUi:Lcom/android/browser/PhoneUi;

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "1"

    const-string v1, "debug.browser.navgesturedebug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mHandler:Landroid/os/Handler;

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    .line 56
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mActivity:Landroid/app/Activity;

    .line 57
    iput-boolean v2, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mCheckMobilePage:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SecNavScreenGestureDetector;)Lcom/android/browser/PhoneUi;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUi:Lcom/android/browser/PhoneUi;

    return-object v0
.end method


# virtual methods
.method public handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z
    .registers 12
    .parameter "detector"
    .parameter "actualScale"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    sget-boolean v4, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    if-eqz v4, :cond_46

    .line 89
    const-string v4, "SecNavScreenGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleScale entered:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v4, "SecNavScreenGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleScale getScaleFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",actualScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_7a

    .line 95
    const-wide/16 v3, 0x64

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    .line 96
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    iput v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mPrevSpan:F

    .line 97
    sget-boolean v3, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    if-eqz v3, :cond_79

    .line 98
    const-string v3, "SecNavScreenGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpdateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_79
    :goto_79
    return v2

    .line 102
    :cond_7a
    iget-wide v4, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_79

    .line 105
    sget-boolean v4, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    if-eqz v4, :cond_ac

    .line 106
    const-string v4, "SecNavScreenGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSpan:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mPrevSpan:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mPrevSpan:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_ac
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    iget v5, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mPrevSpan:F

    div-float/2addr v4, v5

    const v5, 0x3f7ae148

    cmpg-float v4, v4, v5

    if-gez v4, :cond_ce

    iget-boolean v4, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    if-eqz v4, :cond_ce

    .line 109
    iget-object v2, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/browser/SecNavScreenGestureDetector$1;

    invoke-direct {v4, p0}, Lcom/android/browser/SecNavScreenGestureDetector$1;-><init>(Lcom/android/browser/SecNavScreenGestureDetector;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    .line 116
    iput-wide v7, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    move v2, v3

    .line 117
    goto :goto_79

    .line 119
    :cond_ce
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    .line 120
    iput-wide v7, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    goto :goto_79
.end method

.method public onScaleBegin(FFF)Z
    .registers 9
    .parameter "minScale"
    .parameter "maxScale"
    .parameter "beginScale"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    sget-boolean v0, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    if-eqz v0, :cond_4c

    .line 67
    const-string v0, "SecNavScreenGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBegin entered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "SecNavScreenGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShouldGoActiveTabsPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_4c
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    .line 72
    sub-float v0, p3, p1

    const v1, 0x3be56042

    cmpg-float v0, v0, v1

    if-gez v0, :cond_62

    .line 73
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    .line 78
    :goto_5b
    cmpl-float v0, p1, p2

    if-nez v0, :cond_65

    .line 79
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mCheckMobilePage:Z

    .line 83
    :goto_61
    return v3

    .line 75
    :cond_62
    iput-boolean v4, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    goto :goto_5b

    .line 81
    :cond_65
    iput-boolean v4, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mCheckMobilePage:Z

    goto :goto_61
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .registers 6
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    .line 127
    sget-boolean v0, Lcom/android/browser/SecNavScreenGestureDetector;->NAVSCREENGESTUREDEBUG:Z

    if-eqz v0, :cond_1d

    .line 128
    const-string v0, "SecNavScreenGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd entered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1d
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mShouldGoNaveScreen:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mCheckMobilePage:Z

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUpdateTime:J

    .line 134
    return-void
.end method

.method public setUi(Lcom/android/browser/PhoneUi;)V
    .registers 2
    .parameter "ui"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/browser/SecNavScreenGestureDetector;->mUi:Lcom/android/browser/PhoneUi;

    .line 63
    return-void
.end method
