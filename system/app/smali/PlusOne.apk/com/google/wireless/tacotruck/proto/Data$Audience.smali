.class public final Lcom/google/wireless/tacotruck/proto/Data$Audience;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audience"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private public_:Z

.field private user_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10586
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 10587
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->initFields()V

    .line 10588
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10040
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10111
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedIsInitialized:B

    .line 10134
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedSerializedSize:I

    .line 10041
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10035
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10111
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedIsInitialized:B

    .line 10134
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedSerializedSize:I

    .line 10042
    return-void
.end method

.method static synthetic access$13400(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10035
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13500(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10035
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10035
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z

    return p1
.end method

.method static synthetic access$13702(Lcom/google/wireless/tacotruck/proto/Data$Audience;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10035
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 1

    .prologue
    .line 10046
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 10107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    .line 10108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    .line 10109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z

    .line 10110
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 1

    .prologue
    .line 10230
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->access$13200()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10233
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10177
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->access$13100(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3
    .parameter "index"

    .prologue
    .line 10089
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 10086
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCircleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10079
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    return-object v0
.end method

.method public getCircleOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 10093
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;

    return-object v0
.end method

.method public getCircleOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10083
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10035
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 10050
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10103
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 10136
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedSerializedSize:I

    .line 10137
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 10153
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 10139
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 10140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 10141
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10140
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 10144
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 10145
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10144
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 10148
    :cond_3c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_4a

    .line 10149
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 10152
    :cond_4a
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedSerializedSize:I

    move v2, v1

    .line 10153
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 10068
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getUserCount()I
    .registers 2

    .prologue
    .line 10065
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10058
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    return-object v0
.end method

.method public getUserOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 10072
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;

    return-object v0
.end method

.method public getUserOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10062
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    return-object v0
.end method

.method public hasPublic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 10100
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I

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

    .line 10113
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedIsInitialized:B

    .line 10114
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10117
    :goto_8
    return v1

    .line 10114
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10116
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 10235
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

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
    .line 10160
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
    const/4 v3, 0x1

    .line 10122
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getSerializedSize()I

    .line 10123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 10124
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10123
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 10126
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 10127
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 10129
    :cond_33
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3f

    .line 10130
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10132
    :cond_3f
    return-void
.end method
