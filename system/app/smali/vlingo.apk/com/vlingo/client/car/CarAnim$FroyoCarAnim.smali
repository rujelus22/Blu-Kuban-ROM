.class Lcom/vlingo/client/car/CarAnim$FroyoCarAnim;
.super Lcom/vlingo/client/car/CarAnim;
.source "CarAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FroyoCarAnim"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAnim;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarAnim$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAnim$FroyoCarAnim;-><init>()V

    return-void
.end method


# virtual methods
.method public stopAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "a"

    .prologue
    .line 50
    if-eqz p1, :cond_8

    .line 51
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 52
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 54
    :cond_8
    return-void
.end method
