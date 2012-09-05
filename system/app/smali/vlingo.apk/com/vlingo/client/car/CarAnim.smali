.class public abstract Lcom/vlingo/client/car/CarAnim;
.super Ljava/lang/Object;
.source "CarAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarAnim$1;,
        Lcom/vlingo/client/car/CarAnim$FroyoCarAnim;,
        Lcom/vlingo/client/car/CarAnim$EclairCarAnim;
    }
.end annotation


# static fields
.field public static final DURATION_POUP_ANIMATION_DISPLAY:I = 0x12c

.field public static final DURATION_POUP_ANIMATION_HIDE:I = 0xc8

.field public static final DURATION_TOP_ANIMATION_SEQUENCE:I = 0x2ee


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static newInstance()Lcom/vlingo/client/car/CarAnim;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, detector:Lcom/vlingo/client/car/CarAnim;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 28
    new-instance v0, Lcom/vlingo/client/car/CarAnim$EclairCarAnim;

    .end local v0           #detector:Lcom/vlingo/client/car/CarAnim;
    invoke-direct {v0, v3}, Lcom/vlingo/client/car/CarAnim$EclairCarAnim;-><init>(Lcom/vlingo/client/car/CarAnim$1;)V

    .line 33
    .restart local v0       #detector:Lcom/vlingo/client/car/CarAnim;
    :goto_d
    return-object v0

    .line 31
    :cond_e
    new-instance v0, Lcom/vlingo/client/car/CarAnim$FroyoCarAnim;

    .end local v0           #detector:Lcom/vlingo/client/car/CarAnim;
    invoke-direct {v0, v3}, Lcom/vlingo/client/car/CarAnim$FroyoCarAnim;-><init>(Lcom/vlingo/client/car/CarAnim$1;)V

    .restart local v0       #detector:Lcom/vlingo/client/car/CarAnim;
    goto :goto_d
.end method


# virtual methods
.method public abstract stopAnimation(Landroid/view/animation/Animation;)V
.end method
