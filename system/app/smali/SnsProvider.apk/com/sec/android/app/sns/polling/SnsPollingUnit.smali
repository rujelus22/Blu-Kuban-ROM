.class public Lcom/sec/android/app/sns/polling/SnsPollingUnit;
.super Ljava/lang/Object;
.source "SnsPollingUnit.java"


# instance fields
.field private mAppID:I

.field private mPollingID:I

.field private mPollingState:I

.field private mPollingType:I

.field private mSpType:I

.field private mbCanceled:Z

.field private mbSuccess:Z


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .parameter "PollingID"
    .parameter "appID"
    .parameter "spType"
    .parameter "pollingType"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingID:I

    .line 25
    iput p2, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mAppID:I

    .line 26
    iput p3, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mSpType:I

    .line 27
    iput p4, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingType:I

    .line 28
    iput v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingState:I

    .line 29
    iput-boolean v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbSuccess:Z

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbCanceled:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCurrentAppID()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mAppID:I

    return v0
.end method

.method public getCurrentReq()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingType:I

    return v0
.end method

.method public getCurrentSp()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mSpType:I

    return v0
.end method

.method public getCurrentState()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingState:I

    return v0
.end method

.method public getPollingID()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingID:I

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbCanceled:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbSuccess:Z

    return v0
.end method

.method public setCanceled()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbCanceled:Z

    .line 67
    return-void
.end method

.method public setCurrentAppID(I)V
    .registers 2
    .parameter "appID"

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mAppID:I

    .line 39
    return-void
.end method

.method public setPollingState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mPollingState:I

    .line 59
    return-void
.end method

.method public setResult(Z)V
    .registers 2
    .parameter "bSuccess"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->mbSuccess:Z

    .line 75
    return-void
.end method
