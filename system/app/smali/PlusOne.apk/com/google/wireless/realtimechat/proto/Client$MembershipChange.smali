.class public final Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$MembershipChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MembershipChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;

.field private participant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12860
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 12861
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->initFields()V

    .line 12862
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11975
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12193
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedIsInitialized:B

    .line 12228
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedSerializedSize:I

    .line 11976
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;-><init>(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12193
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedIsInitialized:B

    .line 12228
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedSerializedSize:I

    .line 11977
    return-void
.end method

.method static synthetic access$16502(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    return-object p1
.end method

.method static synthetic access$16602(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16702(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16802(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16900(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11970
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$17002(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$17100(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11970
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17202(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11970
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12096
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    .line 12097
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12098
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12100
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    .line 12103
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 1

    .prologue
    .line 11981
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12128
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    .line 12129
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12130
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12132
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    .line 12135
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

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12064
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    .line 12065
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12066
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12068
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    .line 12071
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
    .line 12185
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    .line 12186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    .line 12187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    .line 12188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    .line 12189
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 12190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J

    .line 12191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    .line 12192
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 1

    .prologue
    .line 12345
    #calls: Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->access$16300()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12348
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12082
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    .line 12083
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12084
    check-cast v1, Ljava/lang/String;

    .line 12092
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12086
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12088
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12089
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12090
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12092
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11970
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 11985
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 12177
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getParticipantCount()I
    .registers 2

    .prologue
    .line 12174
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12114
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    .line 12115
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12116
    check-cast v1, Ljava/lang/String;

    .line 12124
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12118
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12120
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12121
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12122
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12124
    goto :goto_8
.end method

.method public getParticipantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12167
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12181
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;

    return-object v0
.end method

.method public getParticipantOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12171
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12150
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 12147
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12144
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12050
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    .line 12051
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12052
    check-cast v1, Ljava/lang/String;

    .line 12060
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12054
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12056
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12057
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12058
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12060
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 12230
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedSerializedSize:I

    .line 12231
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 12268
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 12233
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 12234
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 12235
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 12238
    :cond_1c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 12239
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12242
    :cond_2b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3b

    .line 12243
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12246
    :cond_3b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4c

    .line 12247
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12251
    :cond_4c
    const/4 v0, 0x0

    .line 12252
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4e
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_64

    .line 12253
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 12252
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 12256
    :cond_64
    add-int/2addr v2, v0

    .line 12257
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 12259
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_80

    .line 12260
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 12263
    :cond_80
    const/4 v1, 0x0

    :goto_81
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9a

    .line 12264
    const/4 v5, 0x7

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 12263
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 12267
    :cond_9a
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedSerializedSize:I

    move v3, v2

    .line 12268
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 12160
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
    .registers 2

    .prologue
    .line 12040
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 12079
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

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
    .line 12111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 12047
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 12157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12037
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 12195
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedIsInitialized:B

    .line 12196
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12199
    :goto_8
    return v1

    .line 12196
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12198
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->memoizedIsInitialized:B

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
    .line 12275
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12204
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSerializedSize()I

    .line 12205
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 12206
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->type_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12208
    :cond_15
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 12209
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12211
    :cond_22
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 12212
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12214
    :cond_30
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    .line 12215
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12217
    :cond_3f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 12218
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12217
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 12220
    :cond_55
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_63

    .line 12221
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12223
    :cond_63
    const/4 v0, 0x0

    :goto_64
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 12224
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->participant_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12223
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 12226
    :cond_7b
    return-void
.end method
