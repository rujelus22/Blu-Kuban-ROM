.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inviteClientId_:Ljava/lang/Object;

.field private inviterJid_:Ljava/lang/Object;

.field private inviterMucJid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42856
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 42857
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->initFields()V

    .line 42858
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42206
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42365
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedIsInitialized:B

    .line 42394
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedSerializedSize:I

    .line 42207
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42208
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42365
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedIsInitialized:B

    .line 42394
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedSerializedSize:I

    .line 42208
    return-void
.end method

.method static synthetic access$58702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$58802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$58902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$59202(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42201
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 1

    .prologue
    .line 42212
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method private getInviteClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42241
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    .line 42242
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42243
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42245
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    .line 42248
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

.method private getInviterJidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42337
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    .line 42338
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42339
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42341
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    .line 42344
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

.method private getInviterMucJidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42305
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    .line 42306
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42307
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42309
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    .line 42312
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

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42273
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    .line 42274
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42275
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42277
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    .line 42280
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
    .registers 2

    .prologue
    .line 42359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    .line 42360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    .line 42361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    .line 42362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    .line 42363
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 42364
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 1

    .prologue
    .line 42498
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->access$58500()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 42501
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42201
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 42216
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getInviteClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42227
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    .line 42228
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42229
    check-cast v1, Ljava/lang/String;

    .line 42237
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42233
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42234
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42235
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviteClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42237
    goto :goto_8
.end method

.method public getInviterJid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42323
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    .line 42324
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42325
    check-cast v1, Ljava/lang/String;

    .line 42333
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42327
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42329
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42330
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42331
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterJid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42333
    goto :goto_8
.end method

.method public getInviterMucJid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42291
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    .line 42292
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42293
    check-cast v1, Ljava/lang/String;

    .line 42301
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42295
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42297
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42298
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42299
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->inviterMucJid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42301
    goto :goto_8
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42259
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    .line 42260
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42261
    check-cast v1, Ljava/lang/String;

    .line 42269
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42263
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42265
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42266
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42267
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42269
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42396
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedSerializedSize:I

    .line 42397
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 42421
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 42399
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 42400
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 42401
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42404
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 42405
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42408
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 42409
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42412
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    .line 42413
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42416
    :cond_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5a

    .line 42417
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42420
    :cond_5a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 42421
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 42355
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42224
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviterJid()Z
    .registers 3

    .prologue
    .line 42320
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

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

.method public hasInviterMucJid()Z
    .registers 3

    .prologue
    .line 42288
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    .line 42256
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 42352
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 42367
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedIsInitialized:B

    .line 42368
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 42371
    :goto_8
    return v1

    .line 42368
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 42370
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42201
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42499
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42201
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    .registers 2

    .prologue
    .line 42503
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 42428
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

    .line 42376
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getSerializedSize()I

    .line 42377
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 42378
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviteClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42380
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 42381
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42383
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 42384
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterMucJidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42386
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 42387
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 42389
    :cond_3b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4b

    .line 42390
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getInviterJidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42392
    :cond_4b
    return-void
.end method
