.class Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 23
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .parameter "preComp"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 33
    return-void
.end method

.method protected setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .parameter "twiceThis"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 43
    return-void
.end method
