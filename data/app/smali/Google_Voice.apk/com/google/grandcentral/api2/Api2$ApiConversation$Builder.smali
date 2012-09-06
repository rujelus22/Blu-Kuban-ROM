.class public final Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationTime_:J

.field private id_:Ljava/lang/Object;

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private lastModifiedTimestamp_:J

.field private phoneCall_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private read_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 20009
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 20074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 19756
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->maybeForceBuilderInitialization()V

    .line 19757
    return-void
.end method

.method static synthetic access$23100()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 1

    .prologue
    .line 19750
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 1

    .prologue
    .line 19762
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLabelIsMutable()V
    .registers 3

    .prologue
    .line 20011
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 20012
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 20013
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20015
    :cond_17
    return-void
.end method

.method private ensurePhoneCallIsMutable()V
    .registers 3

    .prologue
    .line 20077
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 20078
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 20079
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20081
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19760
    return-void
.end method


# virtual methods
.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;"
        }
    .end annotation

    .prologue
    .line 20051
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensureLabelIsMutable()V

    .line 20052
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20054
    return-object p0
.end method

.method public addAllPhoneCall(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;"
        }
    .end annotation

    .prologue
    .line 20144
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20145
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20147
    return-object p0
.end method

.method public addLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20041
    if-nez p1, :cond_8

    .line 20042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20044
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensureLabelIsMutable()V

    .line 20045
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 20047
    return-object p0
.end method

.method public addLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20064
    if-nez p1, :cond_8

    .line 20065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20067
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensureLabelIsMutable()V

    .line 20068
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 20070
    return-object p0
.end method

.method public addPhoneCall(ILcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20137
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20138
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20140
    return-object p0
.end method

.method public addPhoneCall(ILcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20120
    if-nez p2, :cond_8

    .line 20121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20123
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20124
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20126
    return-object p0
.end method

.method public addPhoneCall(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 20130
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20131
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20133
    return-object p0
.end method

.method public addPhoneCall(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20110
    if-nez p1, :cond_8

    .line 20111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20113
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20114
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20116
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3

    .prologue
    .line 19791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    .line 19792
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19793
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19795
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 6

    .prologue
    .line 19799
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 19800
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19801
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19802
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19803
    or-int/lit8 v2, v2, 0x1

    .line 19805
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23302(Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19806
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 19807
    or-int/lit8 v2, v2, 0x2

    .line 19809
    :cond_1c
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->conversationTime_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23402(Lcom/google/grandcentral/api2/Api2$ApiConversation;J)J

    .line 19810
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 19811
    or-int/lit8 v2, v2, 0x4

    .line 19813
    :cond_28
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->read_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23502(Lcom/google/grandcentral/api2/Api2$ApiConversation;Z)Z

    .line 19814
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 19815
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19817
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19819
    :cond_44
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23602(Lcom/google/grandcentral/api2/Api2$ApiConversation;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 19820
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5f

    .line 19821
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 19822
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19824
    :cond_5f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23702(Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)Ljava/util/List;

    .line 19825
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6c

    .line 19826
    or-int/lit8 v2, v2, 0x8

    .line 19828
    :cond_6c
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->lastModifiedTimestamp_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23802(Lcom/google/grandcentral/api2/Api2$ApiConversation;J)J

    .line 19829
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23902(Lcom/google/grandcentral/api2/Api2$ApiConversation;I)I

    .line 19830
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 19766
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19767
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19768
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19769
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->conversationTime_:J

    .line 19770
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->read_:Z

    .line 19772
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19773
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19774
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 19776
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19777
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->lastModifiedTimestamp_:J

    .line 19778
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19779
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConversationTime()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3

    .prologue
    .line 19981
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19982
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->conversationTime_:J

    .line 19984
    return-object p0
.end method

.method public clearId()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 19950
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19951
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19953
    return-object p0
.end method

.method public clearLabel()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 20057
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 20058
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20060
    return-object p0
.end method

.method public clearLastModifiedTimestamp()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3

    .prologue
    .line 20177
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->lastModifiedTimestamp_:J

    .line 20180
    return-object p0
.end method

.method public clearPhoneCall()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 20150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 20151
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20153
    return-object p0
.end method

.method public clearRead()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 20002
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->read_:Z

    .line 20005
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3

    .prologue
    .line 19783
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

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
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationTime()J
    .registers 3

    .prologue
    .line 19972
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->conversationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2

    .prologue
    .line 19787
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19750
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19919
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19920
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19921
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19922
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19925
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19930
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19931
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19932
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19934
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19937
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

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 20024
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 20028
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 20021
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
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
    .line 20018
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 20168
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->lastModifiedTimestamp_:J

    return-wide v0
.end method

.method public getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "index"

    .prologue
    .line 20090
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public getPhoneCallCount()I
    .registers 2

    .prologue
    .line 20087
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneCallList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20084
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 19993
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->read_:Z

    return v0
.end method

.method public hasConversationTime()Z
    .registers 3

    .prologue
    .line 19969
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19916
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastModifiedTimestamp()Z
    .registers 3

    .prologue
    .line 20165
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

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

.method public hasRead()Z
    .registers 3

    .prologue
    .line 19990
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 19873
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->hasId()Z

    move-result v2

    if-nez v2, :cond_8

    .line 19891
    :cond_7
    :goto_7
    return v1

    .line 19877
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->hasConversationTime()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19881
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->hasRead()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19885
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->getPhoneCallCount()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 19886
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19885
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 19891
    :cond_28
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 19834
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19869
    :cond_6
    :goto_6
    return-object p0

    .line 19835
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 19836
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19837
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23300(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19840
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasConversationTime()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 19841
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getConversationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setConversationTime(J)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 19843
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 19844
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setRead(Z)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 19846
    :cond_33
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23600(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 19847
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 19848
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23600(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19849
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19856
    :cond_51
    :goto_51
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23700(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 19857
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 19858
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23700(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    .line 19859
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19866
    :cond_6f
    :goto_6f
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasLastModifiedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19867
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getLastModifiedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    goto :goto_6

    .line 19851
    :cond_7d
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensureLabelIsMutable()V

    .line 19852
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23600(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_51

    .line 19861
    :cond_8a
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 19862
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->access$23700(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6f
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19898
    const/4 v2, 0x0

    .line 19900
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 19905
    if-eqz v2, :cond_10

    .line 19906
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 19909
    :cond_10
    return-object p0

    .line 19901
    :catch_11
    move-exception v1

    .line 19902
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-object v2, v0

    .line 19903
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 19905
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 19906
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    :cond_21
    throw v3
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
    .line 19750
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19750
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

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
    .line 19750
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removePhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20156
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20157
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20159
    return-object p0
.end method

.method public setConversationTime(J)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19975
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19976
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->conversationTime_:J

    .line 19978
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19941
    if-nez p1, :cond_8

    .line 19942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19944
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19945
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19947
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19957
    if-nez p1, :cond_8

    .line 19958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19960
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19961
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->id_:Ljava/lang/Object;

    .line 19963
    return-object p0
.end method

.method public setLabel(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20032
    if-nez p2, :cond_8

    .line 20033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20035
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensureLabelIsMutable()V

    .line 20036
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20038
    return-object p0
.end method

.method public setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20171
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 20172
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->lastModifiedTimestamp_:J

    .line 20174
    return-object p0
.end method

.method public setPhoneCall(ILcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20104
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20105
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20107
    return-object p0
.end method

.method public setPhoneCall(ILcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20094
    if-nez p2, :cond_8

    .line 20095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20097
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->ensurePhoneCallIsMutable()V

    .line 20098
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20100
    return-object p0
.end method

.method public setRead(Z)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19996
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->bitField0_:I

    .line 19997
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->read_:Z

    .line 19999
    return-object p0
.end method
