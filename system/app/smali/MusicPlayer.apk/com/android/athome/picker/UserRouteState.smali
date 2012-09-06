.class public Lcom/android/athome/picker/UserRouteState;
.super Ljava/lang/Object;
.source "UserRouteState.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mIsMuted:Z

.field private mSteps:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FZ)V
    .registers 5
    .parameter "deviceId"
    .parameter "volume"
    .parameter "mute"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZI)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FZI)V
    .registers 5
    .parameter "deviceId"
    .parameter "volume"
    .parameter "mute"
    .parameter "steps"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/athome/picker/UserRouteState;->mId:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/android/athome/picker/UserRouteState;->mVolume:F

    .line 16
    iput-boolean p3, p0, Lcom/android/athome/picker/UserRouteState;->mIsMuted:Z

    .line 17
    iput p4, p0, Lcom/android/athome/picker/UserRouteState;->mSteps:I

    .line 18
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/UserRouteState;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/athome/picker/UserRouteState;->mIsMuted:Z

    return v0
.end method

.method public getVolume()F
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/android/athome/picker/UserRouteState;->mVolume:F

    return v0
.end method
