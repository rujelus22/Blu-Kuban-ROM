.class public LDr;
.super Ljava/lang/Object;
.source "AccessibilityHoverHandler.java"


# instance fields
.field private a:I

.field private a:J

.field private final a:LEe;

.field private a:Landroid/hardware/SensorEventListener;

.field private a:Landroid/hardware/SensorManager;

.field private final a:Landroid/os/Handler;

.field private a:Landroid/os/Vibrator;

.field private a:Ljava/lang/Runnable;

.field private b:I

.field private volatile b:J

.field private c:I

.field private volatile d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, LEe;

    invoke-direct {v0}, LEe;-><init>()V

    iput-object v0, p0, LDr;->a:LEe;

    .line 53
    iput v1, p0, LDr;->a:I

    .line 58
    iput v1, p0, LDr;->b:I

    .line 63
    iput v1, p0, LDr;->c:I

    .line 69
    iput v1, p0, LDr;->d:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LDr;->a:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, LDr;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(LDr;[F[F)D
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LDr;->a([F[F)D

    move-result-wide v0

    return-wide v0
.end method

.method private a([F[F)D
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    aget v0, p1, v1

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aget v1, p1, v2

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method static synthetic a(LDr;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->d:I

    return v0
.end method

.method static synthetic a(LDr;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->d:I

    add-int/2addr v0, p1

    iput v0, p0, LDr;->d:I

    return v0
.end method

.method static synthetic a(LDr;)J
    .registers 3
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, LDr;->b:J

    return-wide v0
.end method

.method static synthetic a(LDr;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, LDr;->a:J

    return-wide p1
.end method

.method static synthetic a(LDr;)LEe;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LDr;->a:LEe;

    return-object v0
.end method

.method static synthetic a(LDr;)Landroid/hardware/SensorEventListener;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic a(LDr;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method private a(Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)Landroid/hardware/SensorEventListener;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, LDs;

    invoke-direct {v0, p0, p1, p2}, LDs;-><init>(LDr;Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)V

    return-object v0
.end method

.method static synthetic a(LDr;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic a(LDr;)Landroid/os/Vibrator;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LDr;->a:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic a(LDr;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LDr;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(LDr;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, LDr;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 292
    iput v0, p0, LDr;->a:I

    .line 293
    iput v0, p0, LDr;->b:I

    .line 294
    iput v0, p0, LDr;->d:I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, LDr;->a:Ljava/lang/Runnable;

    .line 297
    return-void
.end method

.method static synthetic a(LDr;[F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, LDr;->a([F)V

    return-void
.end method

.method private a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/view/accessibility/AccessibilityManager;Landroid/view/MotionEvent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    .line 223
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 224
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LDr;->b:J

    .line 226
    iget-object v0, p0, LDr;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_28

    .line 227
    new-instance v0, LDt;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LDt;-><init>(LDr;Lcom/google/android/apps/docs/editors/text/TextView;IILandroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, LDr;->a:Ljava/lang/Runnable;

    .line 269
    iget-object v0, p0, LDr;->a:Landroid/os/Handler;

    iget-object v1, p0, LDr;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    :cond_28
    return-void
.end method

.method private a([F)V
    .registers 7
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1, p1}, LDr;->a([F[F)D

    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 286
    const/4 v2, 0x0

    aget v3, p1, v2

    float-to-double v3, v3

    div-double/2addr v3, v0

    double-to-float v3, v3

    aput v3, p1, v2

    .line 287
    const/4 v2, 0x1

    aget v3, p1, v2

    float-to-double v3, v3

    div-double/2addr v3, v0

    double-to-float v3, v3

    aput v3, p1, v2

    .line 288
    const/4 v2, 0x2

    aget v3, p1, v2

    float-to-double v3, v3

    div-double v0, v3, v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 289
    return-void
.end method

.method static synthetic b(LDr;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->c:I

    return v0
.end method

.method static synthetic b(LDr;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, LDr;->d:I

    return v0
.end method

.method static synthetic b(LDr;)J
    .registers 3
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, LDr;->a:J

    return-wide v0
.end method

.method static synthetic c(LDr;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->b:I

    return v0
.end method

.method static synthetic c(LDr;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, LDr;->d:I

    return p1
.end method

.method static synthetic d(LDr;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LDr;->a:I

    return v0
.end method

.method static synthetic d(LDr;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, LDr;->c:I

    return p1
.end method

.method static synthetic e(LDr;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, LDr;->b:I

    return p1
.end method

.method static synthetic f(LDr;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, LDr;->a:I

    return p1
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, LDr;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 128
    iget v0, p0, LDr;->d:I

    .line 130
    if-ltz v0, :cond_12

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 131
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    :cond_12
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_20

    .line 135
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    .line 139
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->i()V

    .line 140
    invoke-direct {p0}, LDr;->a()V

    .line 141
    return-void
.end method

.method a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, LDr;->a()V

    .line 146
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    .line 147
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 148
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_23

    .line 149
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 151
    :cond_23
    invoke-direct {p0, p2, p3}, LDr;->a(Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iput-object v0, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    .line 152
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, LDr;->a:Landroid/os/Vibrator;

    .line 153
    iget-object v0, p0, LDr;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, LDr;->a:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 154
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 109
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 120
    :goto_15
    :pswitch_15
    const/4 v0, 0x1

    .line 122
    :goto_16
    return v0

    .line 111
    :pswitch_17
    invoke-virtual {p0, p1, p2, v0}, LDr;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/accessibility/AccessibilityManager;)V

    goto :goto_15

    .line 114
    :pswitch_1b
    invoke-direct {p0, p1, v0, p3}, LDr;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/view/accessibility/AccessibilityManager;Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 117
    :pswitch_1f
    invoke-virtual {p0, p1, p2}, LDr;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)V

    goto :goto_15

    .line 122
    :cond_23
    const/4 v0, 0x0

    goto :goto_16

    .line 109
    nop

    :pswitch_data_26
    .packed-switch 0x7
        :pswitch_1b
        :pswitch_15
        :pswitch_17
        :pswitch_1f
    .end packed-switch
.end method
