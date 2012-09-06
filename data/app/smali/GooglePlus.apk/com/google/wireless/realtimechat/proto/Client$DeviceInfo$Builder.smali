.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private androidId_:J

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private createdAt_:J

.field private enabled_:Z

.field private markedForDeletionAt_:J

.field private phoneNumber_:Ljava/lang/Object;

.field private pushEnabled_:Z

.field private token_:Lcom/google/protobuf/ByteString;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

.field private updatedAt_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38540
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38606
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 38630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38786
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38297
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->maybeForceBuilderInitialization()V

    .line 38298
    return-void
.end method

.method static synthetic access$52400()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 38291
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 38303
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38301
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 3

    .prologue
    .line 38342
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    .line 38343
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38344
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38346
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 6

    .prologue
    .line 38360
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 38361
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38362
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38363
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38364
    or-int/lit8 v2, v2, 0x1

    .line 38366
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$52602(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38367
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 38368
    or-int/lit8 v2, v2, 0x2

    .line 38370
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->enabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$52702(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Z)Z

    .line 38371
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 38372
    or-int/lit8 v2, v2, 0x4

    .line 38374
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->pushEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$52802(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Z)Z

    .line 38375
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 38376
    or-int/lit8 v2, v2, 0x8

    .line 38378
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->token_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$52902(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 38379
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 38380
    or-int/lit8 v2, v2, 0x10

    .line 38382
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53002(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38383
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 38384
    or-int/lit8 v2, v2, 0x20

    .line 38386
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->createdAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53102(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J

    .line 38387
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 38388
    or-int/lit8 v2, v2, 0x40

    .line 38390
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->updatedAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53202(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J

    .line 38391
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 38392
    or-int/lit16 v2, v2, 0x80

    .line 38394
    :cond_69
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->markedForDeletionAt_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53302(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J

    .line 38395
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 38396
    or-int/lit16 v2, v2, 0x100

    .line 38398
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->appId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53402(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38399
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 38400
    or-int/lit16 v2, v2, 0x200

    .line 38402
    :cond_83
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->androidId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53502(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;J)J

    .line 38403
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 38404
    or-int/lit16 v2, v2, 0x400

    .line 38406
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53602(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38407
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->access$53702(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;I)I

    .line 38408
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 38307
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38308
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38309
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38310
    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    .line 38311
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38312
    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    .line 38313
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38314
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 38315
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38317
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38318
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    .line 38319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38320
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    .line 38321
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38322
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    .line 38323
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38326
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    .line 38327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38328
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38329
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38330
    return-object p0
.end method

.method public clearAndroidId()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 38779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38780
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    .line 38782
    return-object p0
.end method

.method public clearAppId()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38754
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38756
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38822
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38824
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38825
    return-object p0
.end method

.method public clearCreatedAt()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 38680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    .line 38683
    return-object p0
.end method

.method public clearEnabled()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    .line 38581
    return-object p0
.end method

.method public clearMarkedForDeletionAt()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 38722
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38723
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    .line 38725
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38654
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38655
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38657
    return-object p0
.end method

.method public clearPushEnabled()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38599
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    .line 38602
    return-object p0
.end method

.method public clearToken()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38623
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38624
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 38626
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 38557
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38558
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38560
    return-object p0
.end method

.method public clearUpdatedAt()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 38701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    .line 38704
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3

    .prologue
    .line 38334
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidId()J
    .registers 3

    .prologue
    .line 38770
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    return-wide v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38734
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38735
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38736
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38737
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38740
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 38791
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public getCreatedAt()J
    .registers 3

    .prologue
    .line 38671
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38291
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 2

    .prologue
    .line 38338
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 38569
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    return v0
.end method

.method public getMarkedForDeletionAt()J
    .registers 3

    .prologue
    .line 38713
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38635
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38636
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38637
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38638
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38641
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPushEnabled()Z
    .registers 2

    .prologue
    .line 38590
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    return v0
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 38611
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    .registers 2

    .prologue
    .line 38545
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    return-object v0
.end method

.method public getUpdatedAt()J
    .registers 3

    .prologue
    .line 38692
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    return-wide v0
.end method

.method public hasAndroidId()Z
    .registers 3

    .prologue
    .line 38767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasAppId()Z
    .registers 3

    .prologue
    .line 38731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 38788
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreatedAt()Z
    .registers 3

    .prologue
    .line 38668
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 38566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public hasMarkedForDeletionAt()Z
    .registers 3

    .prologue
    .line 38710
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 38632
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public hasPushEnabled()Z
    .registers 3

    .prologue
    .line 38587
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .prologue
    .line 38608
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38542
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUpdatedAt()Z
    .registers 3

    .prologue
    .line 38689
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 38450
    const/4 v0, 0x1

    return v0
.end method

.method public mergeClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38810
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 38812
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38818
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38819
    return-object p0

    .line 38815
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    goto :goto_20
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38291
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38291
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38291
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38458
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 38459
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_b6

    .line 38464
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38466
    :sswitch_d
    return-object p0

    .line 38471
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 38472
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    move-result-object v3

    .line 38473
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    if-eqz v3, :cond_0

    .line 38474
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38475
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    goto :goto_0

    .line 38480
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38481
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    goto :goto_0

    .line 38485
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38486
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    goto :goto_0

    .line 38490
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 38495
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 38500
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    goto :goto_0

    .line 38505
    :sswitch_62
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    goto :goto_0

    .line 38510
    :sswitch_6f
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    goto :goto_0

    .line 38515
    :sswitch_7c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 38520
    :sswitch_8a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    goto/16 :goto_0

    .line 38525
    :sswitch_98
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v1

    .line 38526
    .local v1, subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->hasClientVersion()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 38527
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 38529
    :cond_a9
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 38530
    invoke-virtual {v1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    goto/16 :goto_0

    .line 38459
    nop

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x30 -> :sswitch_55
        0x38 -> :sswitch_62
        0x40 -> :sswitch_6f
        0x4a -> :sswitch_7c
        0x50 -> :sswitch_8a
        0x5a -> :sswitch_98
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 38412
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38446
    :cond_6
    :goto_6
    return-object p0

    .line 38413
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38414
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getType()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38416
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 38417
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38419
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 38420
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getPushEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setPushEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38422
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 38423
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38425
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 38426
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38428
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasCreatedAt()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 38429
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setCreatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38431
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasUpdatedAt()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 38432
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setUpdatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38434
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasMarkedForDeletionAt()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 38435
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getMarkedForDeletionAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setMarkedForDeletionAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38437
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 38438
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38440
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 38441
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getAndroidId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    .line 38443
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38444
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->mergeClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    goto/16 :goto_6
.end method

.method public setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38774
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->androidId_:J

    .line 38776
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38744
    if-nez p1, :cond_8

    .line 38745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38747
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38748
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->appId_:Ljava/lang/Object;

    .line 38750
    return-object p0
.end method

.method public setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38804
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38807
    return-object p0
.end method

.method public setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38794
    if-nez p1, :cond_8

    .line 38795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38797
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 38799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38800
    return-object p0
.end method

.method public setCreatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38675
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->createdAt_:J

    .line 38677
    return-object p0
.end method

.method public setEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38573
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->enabled_:Z

    .line 38575
    return-object p0
.end method

.method public setMarkedForDeletionAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38716
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38717
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->markedForDeletionAt_:J

    .line 38719
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38645
    if-nez p1, :cond_8

    .line 38646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38648
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38649
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 38651
    return-object p0
.end method

.method public setPushEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38594
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->pushEnabled_:Z

    .line 38596
    return-object p0
.end method

.method public setToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38614
    if-nez p1, :cond_8

    .line 38615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38617
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38618
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 38620
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38548
    if-nez p1, :cond_8

    .line 38549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38551
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38552
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$DeviceType;

    .line 38554
    return-object p0
.end method

.method public setUpdatedAt(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->bitField0_:I

    .line 38696
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->updatedAt_:J

    .line 38698
    return-object p0
.end method
