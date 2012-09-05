.class public final Lcom/google/wireless/webapps/Version$ClientVersion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Version.java"

# interfaces
.implements Lcom/google/wireless/webapps/Version$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Version$ClientVersion$Builder;,
        Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;,
        Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;,
        Lcom/google/wireless/webapps/Version$ClientVersion$App;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private static final serialVersionUID:J


# instance fields
.field private app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

.field private bitField0_:I

.field private buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field private dataVersion_:I

.field private deviceHardware_:Ljava/lang/Object;

.field private deviceOs_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 853
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Version$ClientVersion;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion;->defaultInstance:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 854
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion;->defaultInstance:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->initFields()V

    .line 855
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 313
    iput-byte v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedIsInitialized:B

    .line 348
    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedSerializedSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;Lcom/google/wireless/webapps/Version$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion;-><init>(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 313
    iput-byte v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedIsInitialized:B

    .line 348
    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/webapps/Version$ClientVersion;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$App;)Lcom/google/wireless/webapps/Version$ClientVersion$App;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;)Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/webapps/Version$ClientVersion;Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;)Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/webapps/Version$ClientVersion;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/wireless/webapps/Version$ClientVersion;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/wireless/webapps/Version$ClientVersion;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/wireless/webapps/Version$ClientVersion;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion;->defaultInstance:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method private getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    .line 294
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 295
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 297
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    .line 300
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getDeviceOsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    .line 262
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 263
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 265
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    .line 268
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 305
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 306
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 307
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 308
    iput v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I

    .line 309
    iput v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 1

    .prologue
    .line 460
    #calls: Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->create()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->access$100()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 463
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApp()Lcom/google/wireless/webapps/Version$ClientVersion$App;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    return-object v0
.end method

.method public getBuildType()Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    return-object v0
.end method

.method public getDataVersion()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I

    return v0
.end method

.method public getDeviceHardware()Ljava/lang/String;
    .registers 5

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    .line 280
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 281
    check-cast v1, Ljava/lang/String;

    .line 289
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 283
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 285
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 287
    iput-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceHardware_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 289
    goto :goto_8
.end method

.method public getDeviceOs()Ljava/lang/String;
    .registers 5

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    .line 248
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 249
    check-cast v1, Ljava/lang/String;

    .line 257
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 251
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 253
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 255
    iput-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->deviceOs_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 257
    goto :goto_8
.end method

.method public getPlatformType()Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 350
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedSerializedSize:I

    .line 351
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 383
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 353
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 354
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 355
    iget-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    invoke-virtual {v2}, Lcom/google/wireless/webapps/Version$ClientVersion$App;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 358
    :cond_1c
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 359
    iget-object v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    invoke-virtual {v2}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 362
    :cond_2d
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3f

    .line 363
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    invoke-virtual {v3}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    :cond_3f
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    .line 367
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 370
    :cond_4e
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 371
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 374
    :cond_5e
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_70

    .line 375
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceOsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 378
    :cond_70
    iget v2, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_82

    .line 379
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_82
    iput v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedSerializedSize:I

    move v1, v0

    .line 383
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I

    return v0
.end method

.method public hasApp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 194
    iget v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasBuildType()Z
    .registers 3

    .prologue
    .line 204
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDataVersion()Z
    .registers 3

    .prologue
    .line 234
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDeviceHardware()Z
    .registers 3

    .prologue
    .line 276
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDeviceOs()Z
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlatformType()Z
    .registers 3

    .prologue
    .line 214
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 224
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-byte v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedIsInitialized:B

    .line 316
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 319
    :goto_8
    return v1

    .line 316
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 318
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Version$ClientVersion;->getSerializedSize()I

    .line 325
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 326
    iget-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->app_:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$App;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 328
    :cond_15
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 329
    iget-object v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->buildType_:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 331
    :cond_24
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_34

    .line 332
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->platformType_:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    invoke-virtual {v1}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 334
    :cond_34
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 335
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->version_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 337
    :cond_41
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 338
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->dataVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 340
    :cond_4f
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f

    .line 341
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceOsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 343
    :cond_5f
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6f

    .line 344
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 346
    :cond_6f
    return-void
.end method
