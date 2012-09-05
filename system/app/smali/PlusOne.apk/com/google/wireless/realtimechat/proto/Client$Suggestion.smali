.class public final Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Suggestion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private suggestedUser_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40640
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .line 40641
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->initFields()V

    .line 40642
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40291
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40328
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedIsInitialized:B

    .line 40345
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedSerializedSize:I

    .line 40292
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40286
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40328
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedIsInitialized:B

    .line 40345
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedSerializedSize:I

    .line 40293
    return-void
.end method

.method static synthetic access$56200(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40286
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$56202(Lcom/google/wireless/realtimechat/proto/Client$Suggestion;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40286
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 1

    .prologue
    .line 40297
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 40326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    .line 40327
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    .registers 1

    .prologue
    .line 40433
    #calls: Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;->access$56000()Lcom/google/wireless/realtimechat/proto/Client$Suggestion$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40286
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 2

    .prologue
    .line 40301
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 40347
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedSerializedSize:I

    .line 40348
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 40356
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 40350
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 40351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 40352
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 40351
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 40355
    :cond_22
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedSerializedSize:I

    move v2, v1

    .line 40356
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getSuggestedUser(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 3
    .parameter "index"

    .prologue
    .line 40318
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getSuggestedUserCount()I
    .registers 2

    .prologue
    .line 40315
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestedUserList()Ljava/util/List;
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
    .line 40308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestedUserOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 40322
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;

    return-object v0
.end method

.method public getSuggestedUserOrBuilderList()Ljava/util/List;
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
    .line 40312
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 40330
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedIsInitialized:B

    .line 40331
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 40334
    :goto_8
    return v1

    .line 40331
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 40333
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->memoizedIsInitialized:B

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
    .line 40363
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40339
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getSerializedSize()I

    .line 40340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 40341
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->suggestedUser_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40340
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 40343
    :cond_1b
    return-void
.end method
