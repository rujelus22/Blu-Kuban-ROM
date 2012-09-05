.class public Lcom/android/samsungtest/EtcTest/touch_noise;
.super Landroid/app/Activity;
.source "touch_noise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/EtcTest/touch_noise$MyView;
    }
.end annotation


# static fields
.field protected static test_num:I


# instance fields
.field private HEIGHT_BASIS:I

.field private final MAX_BUFFER_SIZE:I

.field private WIDTH_BASIS:I

.field col_height:F

.field col_width:F

.field private currentX:Ljava/lang/String;

.field private currentY:Ljava/lang/String;

.field private deltaValue_10:Ljava/lang/String;

.field private deltaValue_11:Ljava/lang/String;

.field private deltaValue_5:Ljava/lang/String;

.field private deltaValue_6:Ljava/lang/String;

.field private deltaValue_7:Ljava/lang/String;

.field private deltaValue_8:Ljava/lang/String;

.field private deltaValue_9:Ljava/lang/String;

.field private font_size:I

.field private lcd_height:I

.field private lcd_width:I

.field private mBackSensitivity:Ljava/lang/String;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHandler:Landroid/os/Handler;

.field private mMenuSensitivity:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;

.field private mbackgroundPaint:Landroid/graphics/Paint;

.field private mlinePaint:Landroid/graphics/Paint;

.field private mrectPaint:Landroid/graphics/Paint;

.field private mrectPaint2:Landroid/graphics/Paint;

.field private thresholdValue:Ljava/lang/String;

.field private threshold_delta_0:Ljava/lang/String;

.field private threshold_delta_1:Ljava/lang/String;

.field private threshold_delta_2:Ljava/lang/String;

.field private threshold_delta_3:Ljava/lang/String;

.field private threshold_delta_4:Ljava/lang/String;

.field private threshold_delta_6:Ljava/lang/String;

.field private threshold_refer:Ljava/lang/String;

.field private threshold_refer_0:Ljava/lang/String;

.field private threshold_refer_1:Ljava/lang/String;

.field private threshold_refer_2:Ljava/lang/String;

.field private threshold_refer_3:Ljava/lang/String;

.field private threshold_refer_4:Ljava/lang/String;

.field private threshold_refer_6:Ljava/lang/String;

.field private touchValue_0:Ljava/lang/String;

.field private touchValue_1:Ljava/lang/String;

.field private touchValue_10:Ljava/lang/String;

.field private touchValue_11:Ljava/lang/String;

.field private touchValue_2:Ljava/lang/String;

.field private touchValue_3:Ljava/lang/String;

.field private touchValue_4:Ljava/lang/String;

.field private touchValue_5:Ljava/lang/String;

.field private touchValue_6:Ljava/lang/String;

.field private touchValue_7:Ljava/lang/String;

.field private touchValue_8:Ljava/lang/String;

.field private touchValue_9:Ljava/lang/String;

.field private touchX:I

.field private touchY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/samsungtest/EtcTest/touch_noise;->test_num:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I

    .line 34
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I

    .line 36
    iput v3, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I

    .line 61
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_0:Ljava/lang/String;

    .line 63
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_1:Ljava/lang/String;

    .line 65
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_2:Ljava/lang/String;

    .line 67
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_3:Ljava/lang/String;

    .line 69
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_4:Ljava/lang/String;

    .line 71
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_5:Ljava/lang/String;

    .line 73
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_6:Ljava/lang/String;

    .line 75
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_7:Ljava/lang/String;

    .line 77
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_8:Ljava/lang/String;

    .line 79
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_9:Ljava/lang/String;

    .line 81
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_10:Ljava/lang/String;

    .line 83
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_11:Ljava/lang/String;

    .line 85
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->thresholdValue:Ljava/lang/String;

    .line 87
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_5:Ljava/lang/String;

    .line 89
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_6:Ljava/lang/String;

    .line 91
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_7:Ljava/lang/String;

    .line 93
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_8:Ljava/lang/String;

    .line 95
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_9:Ljava/lang/String;

    .line 97
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_10:Ljava/lang/String;

    .line 99
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_11:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_6:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_6:Ljava/lang/String;

    .line 114
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->MAX_BUFFER_SIZE:I

    .line 116
    iput v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchX:I

    .line 118
    iput v2, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchY:I

    .line 120
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->currentX:Ljava/lang/String;

    .line 122
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->currentY:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mTimer:Ljava/util/Timer;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mHandler:Landroid/os/Handler;

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/EtcTest/touch_noise;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/samsungtest/EtcTest/touch_noise;->updateCurrentTouchNoiseStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->thresholdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->thresholdValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_6:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_6:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_7:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_7:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_8:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_8:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_8:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_8:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_9:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_9:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_9:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->deltaValue_9:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mMenuSensitivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_11:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/samsungtest/EtcTest/touch_noise;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchValue_11:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Canvas;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/samsungtest/EtcTest/touch_noise;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mBackSensitivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/samsungtest/EtcTest/touch_noise;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/samsungtest/EtcTest/touch_noise;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mbackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/samsungtest/EtcTest/touch_noise;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method private initPaint()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;

    .line 350
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->font_size:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;

    .line 354
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mbackgroundPaint:Landroid/graphics/Paint;

    .line 357
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mbackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mbackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;

    .line 360
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mrectPaint2:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "filepath"

    .prologue
    .line 247
    const-string v4, ""

    .line 248
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_67
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_4a

    .line 251
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 252
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_80
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_7d

    move-result-object v4

    .line 261
    :cond_19
    if-eqz v1, :cond_83

    .line 263
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    move-object v0, v1

    .line 270
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    return-object v4

    .line 264
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_20
    move-exception v2

    .line 265
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TouchNoiseTest"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 267
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 254
    .end local v2           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v3

    .line 255
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2e
    :try_start_2e
    const-string v5, "TouchNoiseTest"

    const-string v6, "FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_67

    .line 261
    if-eqz v0, :cond_1f

    .line 263
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_1f

    .line 264
    :catch_3e
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "TouchNoiseTest"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 257
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_4a
    move-exception v2

    .line 258
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string v5, "TouchNoiseTest"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_67

    .line 261
    if-eqz v0, :cond_1f

    .line 263
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_1f

    .line 264
    :catch_5b
    move-exception v2

    .line 265
    const-string v5, "TouchNoiseTest"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 261
    .end local v2           #e:Ljava/io/IOException;
    :catchall_67
    move-exception v5

    :goto_68
    if-eqz v0, :cond_6d

    .line 263
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 267
    :cond_6d
    :goto_6d
    throw v5

    .line 264
    :catch_6e
    move-exception v2

    .line 265
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "TouchNoiseTest"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    .line 261
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_7a
    move-exception v5

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_68

    .line 257
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7d
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4b

    .line 254
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_80
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2e

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_83
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method private updateCurrentTouchNoiseStatus()V
    .registers 2

    .prologue
    .line 274
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_threshould"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer:Ljava/lang/String;

    .line 279
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_refer0"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_0:Ljava/lang/String;

    .line 280
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_refer1"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_1:Ljava/lang/String;

    .line 281
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_refer2"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_2:Ljava/lang/String;

    .line 282
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_refer3"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_3:Ljava/lang/String;

    .line 283
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_refer4"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_refer_4:Ljava/lang/String;

    .line 288
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_delta0"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_0:Ljava/lang/String;

    .line 289
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_delta1"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_1:Ljava/lang/String;

    .line 290
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_delta2"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_2:Ljava/lang/String;

    .line 291
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_delta3"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_3:Ljava/lang/String;

    .line 292
    const-string v0, "/sys/devices/virtual/sec/qt602240_noise_test/set_delta4"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->threshold_delta_4:Ljava/lang/String;

    .line 297
    return-void
.end method

.method private writeOneInFile(Ljava/lang/String;)V
    .registers 8
    .parameter "string"

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1b

    .line 303
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_42
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_45

    .line 308
    if-eqz v2, :cond_10

    .line 310
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    :cond_10
    :goto_10
    move-object v1, v2

    .line 316
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_11
    :goto_11
    return-void

    .line 311
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_12
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/IOException;
    const-string v3, "TouchNoiseTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_1b
    move-exception v0

    .line 305
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1c
    :try_start_1c
    const-string v3, "TouchNoiseTest"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_32

    .line 308
    if-eqz v1, :cond_11

    .line 310
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_11

    .line 311
    :catch_29
    move-exception v0

    .line 312
    const-string v3, "TouchNoiseTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :catchall_32
    move-exception v3

    :goto_33
    if-eqz v1, :cond_38

    .line 310
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 313
    :cond_38
    :goto_38
    throw v3

    .line 311
    :catch_39
    move-exception v0

    .line 312
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "TouchNoiseTest"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_42
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_33

    .line 304
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_45
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1c
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/samsungtest/EtcTest/touch_noise;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I

    .line 143
    invoke-virtual {p0}, Lcom/android/samsungtest/EtcTest/touch_noise;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I

    .line 144
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->HEIGHT_BASIS:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->col_height:F

    .line 145
    iget v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->lcd_width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->WIDTH_BASIS:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->col_width:F

    .line 146
    invoke-direct {p0}, Lcom/android/samsungtest/EtcTest/touch_noise;->initPaint()V

    .line 147
    new-instance v0, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;

    invoke-direct {v0, p0, p0}, Lcom/android/samsungtest/EtcTest/touch_noise$MyView;-><init>(Lcom/android/samsungtest/EtcTest/touch_noise;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->setContentView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x52

    const/4 v0, 0x4

    .line 192
    if-eq p1, v0, :cond_7

    if-ne p1, v1, :cond_44

    .line 193
    :cond_7
    if-ne p1, v0, :cond_26

    .line 194
    const-string v0, "TouchNoiseTest"

    const-string v1, "KeyCode Back writing & reading system files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "/sys/devices/virtual/sec/sec_touchkey/touch_sensitivity"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->writeOneInFile(Ljava/lang/String;)V

    .line 196
    const-string v0, "/sys/devices/virtual/sec/sec_touchkey/touchkey_back"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mBackSensitivity:Ljava/lang/String;

    .line 197
    const-string v0, "TouchNoiseTest"

    const-string v1, "Back key done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 207
    :goto_25
    return v0

    .line 198
    :cond_26
    if-ne p1, v1, :cond_24

    .line 199
    const-string v0, "TouchNoiseTest"

    const-string v1, "KeyCode Menu writing & reading system files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "/sys/devices/virtual/sec/sec_touchkey/touch_sensitivity"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->writeOneInFile(Ljava/lang/String;)V

    .line 201
    const-string v0, "/sys/devices/virtual/sec/sec_touchkey/touchkey_menu"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/EtcTest/touch_noise;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->mMenuSensitivity:Ljava/lang/String;

    .line 202
    const-string v0, "TouchNoiseTest"

    const-string v1, "Menu key done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 207
    :cond_44
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 180
    iput v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchX:I

    .line 181
    iput v1, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchY:I

    .line 187
    :goto_c
    return v2

    .line 183
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchX:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/samsungtest/EtcTest/touch_noise;->touchY:I

    goto :goto_c
.end method
