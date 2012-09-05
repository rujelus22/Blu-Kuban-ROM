.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineLicenseInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;


# instance fields
.field private hasJustAcquiredOfflineLicense:Z

.field private hasNumAllowedOfflineDevices:Z

.field private hasNumOfflineDevices:Z

.field private justAcquiredOfflineLicense_:Z

.field private memoizedSerializedSize:I

.field private numAllowedOfflineDevices_:I

.field private numOfflineDevices_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2709
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 2710
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 2711
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->initFields()V

    .line 2712
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2390
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2407
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numAllowedOfflineDevices_:I

    .line 2414
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numOfflineDevices_:I

    .line 2421
    iput-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->justAcquiredOfflineLicense_:Z

    .line 2445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->memoizedSerializedSize:I

    .line 2391
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->initFields()V

    .line 2392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 2393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2407
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numAllowedOfflineDevices_:I

    .line 2414
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numOfflineDevices_:I

    .line 2421
    iput-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->justAcquiredOfflineLicense_:Z

    .line 2445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->memoizedSerializedSize:I

    .line 2393
    return-void
.end method

.method static synthetic access$6002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numAllowedOfflineDevices_:I

    return p1
.end method

.method static synthetic access$6202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numOfflineDevices_:I

    return p1
.end method

.method static synthetic access$6402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->justAcquiredOfflineLicense_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 1

    .prologue
    .line 2397
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 2426
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 1

    .prologue
    .line 2534
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->access$5800()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2537
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getJustAcquiredOfflineLicense()Z
    .registers 2

    .prologue
    .line 2423
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->justAcquiredOfflineLicense_:Z

    return v0
.end method

.method public getNumAllowedOfflineDevices()I
    .registers 2

    .prologue
    .line 2409
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numAllowedOfflineDevices_:I

    return v0
.end method

.method public getNumOfflineDevices()I
    .registers 2

    .prologue
    .line 2416
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numOfflineDevices_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2447
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->memoizedSerializedSize:I

    .line 2448
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 2464
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 2450
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 2451
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2452
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumAllowedOfflineDevices()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2455
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2456
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumOfflineDevices()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2459
    :cond_28
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2460
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getJustAcquiredOfflineLicense()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2463
    :cond_38
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 2464
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public hasJustAcquiredOfflineLicense()Z
    .registers 2

    .prologue
    .line 2422
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense:Z

    return v0
.end method

.method public hasNumAllowedOfflineDevices()Z
    .registers 2

    .prologue
    .line 2408
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices:Z

    return v0
.end method

.method public hasNumOfflineDevices()Z
    .registers 2

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices:Z

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getSerializedSize()I

    .line 2434
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2435
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumAllowedOfflineDevices()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2437
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2438
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumOfflineDevices()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2440
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2441
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getJustAcquiredOfflineLicense()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2443
    :cond_2d
    return-void
.end method
