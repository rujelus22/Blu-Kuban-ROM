.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteReplyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private instanceId_:J

.field private inviteId_:Ljava/lang/Object;

.field private inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

.field private inviterId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44880
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 44881
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->initFields()V

    .line 44882
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44160
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44355
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedIsInitialized:B

    .line 44387
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedSerializedSize:I

    .line 44161
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44162
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44355
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedIsInitialized:B

    .line 44387
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedSerializedSize:I

    .line 44162
    return-void
.end method

.method static synthetic access$61502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$61602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    return-object p1
.end method

.method static synthetic access$61702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$61802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$61902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J

    return-wide p1
.end method

.method static synthetic access$62002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$62102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44155
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 1

    .prologue
    .line 44166
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method private getInviteIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44242
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    .line 44243
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44244
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44246
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    .line 44249
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

.method private getInviterIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44316
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    .line 44317
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44318
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44320
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    .line 44323
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

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44284
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    .line 44285
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44286
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44288
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    .line 44291
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
    .line 44348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    .line 44349
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    .line 44350
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    .line 44351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    .line 44352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J

    .line 44353
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 44354
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 1

    .prologue
    .line 44495
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->access$61300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 44498
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44155
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 44170
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getInstanceId()J
    .registers 3

    .prologue
    .line 44334
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J

    return-wide v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44228
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    .line 44229
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44230
    check-cast v1, Ljava/lang/String;

    .line 44238
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44232
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44234
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44235
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44236
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44238
    goto :goto_8
.end method

.method public getInviteeStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;
    .registers 2

    .prologue
    .line 44260
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    return-object v0
.end method

.method public getInviterId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44302
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    .line 44303
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44304
    check-cast v1, Ljava/lang/String;

    .line 44312
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44308
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44309
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44310
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviterId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44312
    goto :goto_8
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44270
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    .line 44271
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44272
    check-cast v1, Ljava/lang/String;

    .line 44280
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44274
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44276
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44277
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44278
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44280
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44389
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedSerializedSize:I

    .line 44390
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 44418
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 44392
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 44393
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 44394
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44397
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 44398
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 44401
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 44402
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44405
    :cond_3b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4a

    .line 44406
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44409
    :cond_4a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5c

    .line 44410
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44413
    :cond_5c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6c

    .line 44414
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 44417
    :cond_6c
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 44418
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 44344
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInstanceId()Z
    .registers 3

    .prologue
    .line 44331
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

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

.method public hasInviteId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44225
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviteeStatus()Z
    .registers 3

    .prologue
    .line 44257
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

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

.method public hasInviterId()Z
    .registers 3

    .prologue
    .line 44299
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 44267
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 44341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 44357
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedIsInitialized:B

    .line 44358
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44361
    :goto_8
    return v1

    .line 44358
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44360
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44155
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44496
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44155
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    .registers 2

    .prologue
    .line 44500
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

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
    .line 44425
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

    .line 44366
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getSerializedSize()I

    .line 44367
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 44368
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44370
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 44371
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->inviteeStatus_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44373
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 44374
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44376
    :cond_30
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3d

    .line 44377
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 44379
    :cond_3d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4d

    .line 44380
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getInviterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44382
    :cond_4d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5b

    .line 44383
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->instanceId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 44385
    :cond_5b
    return-void
.end method
