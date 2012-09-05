.class public Lcom/google/android/finsky/download/Download$PackageProperties;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageProperties"
.end annotation


# instance fields
.field public final account:Ljava/lang/String;

.field public final assetId:Ljava/lang/String;

.field public final autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

.field public final forwardLocked:Z

.field public final mainObb:Lcom/google/android/finsky/download/obb/Obb;

.field public final packageName:Ljava/lang/String;

.field public final patchObb:Lcom/google/android/finsky/download/obb/Obb;

.field public final refundPeriodEndTime:Ljava/lang/Long;

.field public final signature:Ljava/lang/String;

.field public final size:J

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;ZJLjava/lang/String;Ljava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
    .registers 13
    .parameter "packageName"
    .parameter "autoUpdateState"
    .parameter "account"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "forwardLocked"
    .parameter "size"
    .parameter "signature"
    .parameter "refundPeriodEndTime"
    .parameter "mainObb"
    .parameter "patchObb"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 78
    iput-object p3, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->account:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    .line 80
    iput-object p5, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->assetId:Ljava/lang/String;

    .line 81
    iput-boolean p6, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->forwardLocked:Z

    .line 82
    iput-wide p7, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->size:J

    .line 83
    iput-object p9, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->signature:Ljava/lang/String;

    .line 84
    iput-object p10, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->refundPeriodEndTime:Ljava/lang/Long;

    .line 85
    iput-object p11, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 86
    iput-object p12, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 87
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, numObbs:I
    iget-object v1, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 93
    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v1, v2, :cond_21

    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_21
    const-string v1, "Package=%s version=%d (%s OBBs)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
