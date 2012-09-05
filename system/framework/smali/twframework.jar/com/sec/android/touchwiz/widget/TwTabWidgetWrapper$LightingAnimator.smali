.class public Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;
.super Ljava/lang/Object;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LightingAnimator"
.end annotation


# instance fields
.field private final ALPHA_MAX:I

.field private final ALPHA_MIN:I

.field private currentState:Z

.field private mLightingAnimationalpha:I

.field private mMode:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/16 v1, 0xfa

    const/4 v0, 0x0

    .line 199
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->ALPHA_MAX:I

    .line 196
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->ALPHA_MIN:I

    .line 200
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->currentState:Z

    .line 201
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    .line 202
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mMode:Z

    .line 203
    return-void
.end method


# virtual methods
.method getAlpha()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    return v0
.end method

.method hide()V
    .registers 2

    .prologue
    .line 221
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->currentState:Z

    .line 223
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method isAnimating()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->currentState:Z

    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0xfa

    const/4 v1, 0x1

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->currentState:Z

    if-nez v0, :cond_9

    .line 228
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->currentState:Z

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->invalidate()V

    .line 232
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    if-lez v0, :cond_2f

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    if-ge v0, v2, :cond_2f

    .line 233
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mMode:Z

    if-eqz v0, :cond_28

    .line 234
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    .line 247
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void

    .line 236
    :cond_28
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    goto :goto_20

    .line 238
    :cond_2f
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    if-lt v0, v2, :cond_3b

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mMode:Z

    .line 240
    const/16 v0, 0xf5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    goto :goto_20

    .line 241
    :cond_3b
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    if-gtz v0, :cond_20

    .line 242
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mMode:Z

    .line 243
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    goto :goto_20
.end method

.method show()V
    .registers 3

    .prologue
    .line 215
    const-string v0, "LightingAnimator"

    const-string v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->mLightingAnimationalpha:I

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$LightingAnimator;->run()V

    .line 218
    return-void
.end method
