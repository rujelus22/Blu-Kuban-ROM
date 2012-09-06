.class public Landroid/support/place/connector/coordinator/VersionCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static CHECK_VERSION_STATUS_CLIENT_TOO_NEW:I = 0x0

.field public static CHECK_VERSION_STATUS_CLIENT_TOO_OLD:I = 0x0

.field public static CHECK_VERSION_STATUS_OK:I = 0x0

.field private static final KEY_MAX_VERSION:Ljava/lang/String; = "maxVersion"

.field private static final KEY_MIN_VERSION:Ljava/lang/String; = "minVersion"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mCheckStatus:I

.field private mMaxSupportedApiVersion:I

.field private mMinSupportedApiVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Landroid/support/place/connector/coordinator/VersionCheck;->CHECK_VERSION_STATUS_OK:I

    .line 10
    const/4 v0, 0x1

    sput v0, Landroid/support/place/connector/coordinator/VersionCheck;->CHECK_VERSION_STATUS_CLIENT_TOO_OLD:I

    .line 11
    const/4 v0, 0x2

    sput v0, Landroid/support/place/connector/coordinator/VersionCheck;->CHECK_VERSION_STATUS_CLIENT_TOO_NEW:I

    .line 33
    new-instance v0, Landroid/support/place/connector/coordinator/VersionCheck$1;

    invoke-direct {v0}, Landroid/support/place/connector/coordinator/VersionCheck$1;-><init>()V

    sput-object v0, Landroid/support/place/connector/coordinator/VersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mCheckStatus:I

    .line 23
    iput p2, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMinSupportedApiVersion:I

    .line 24
    iput p3, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMaxSupportedApiVersion:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mCheckStatus:I

    .line 29
    const-string v0, "minVersion"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMinSupportedApiVersion:I

    .line 30
    const-string v0, "maxVersion"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMaxSupportedApiVersion:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCheckStatus()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mCheckStatus:I

    return v0
.end method

.method public getMaxSupportedApiVersion()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMaxSupportedApiVersion:I

    return v0
.end method

.method public getMinSupportedApiVersion()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMinSupportedApiVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 65
    const-string v0, "{TgsVersionCheck check=%d min=%d max=%d}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mCheckStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMinSupportedApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMaxSupportedApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    const-string v0, "status"

    iget v1, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mCheckStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 44
    const-string v0, "minVersion"

    iget v1, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMinSupportedApiVersion:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 45
    const-string v0, "maxVersion"

    iget v1, p0, Landroid/support/place/connector/coordinator/VersionCheck;->mMaxSupportedApiVersion:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 46
    return-void
.end method
