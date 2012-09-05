.class Lcom/vlingo/client/car/CarAnim$EclairCarAnim;
.super Lcom/vlingo/client/car/CarAnim;
.source "CarAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EclairCarAnim"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAnim;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarAnim$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAnim$EclairCarAnim;-><init>()V

    return-void
.end method


# virtual methods
.method public stopAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 40
    if-eqz p1, :cond_f

    .line 41
    const-wide/32 v0, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 43
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 45
    :cond_f
    return-void
.end method
