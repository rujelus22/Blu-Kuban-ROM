.class public final Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TagListContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TagListContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$TagListContent;",
        "Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$TagListContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private tags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20027
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->maybeForceBuilderInitialization()V

    .line 20028
    return-void
.end method

.method static synthetic access$24600(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20021
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24700()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 1

    .prologue
    .line 20021
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20061
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    .line 20062
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20063
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20066
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 1

    .prologue
    .line 20033
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTagsIsMutable()V
    .registers 3

    .prologue
    .line 20138
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 20139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20140
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    .line 20142
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20031
    return-void
.end method


# virtual methods
.method public addAllTags(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;"
        }
    .end annotation

    .prologue
    .line 20205
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20206
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20208
    return-object p0
.end method

.method public addTags(ILcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20198
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20199
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20201
    return-object p0
.end method

.method public addTags(ILcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20181
    if-nez p2, :cond_8

    .line 20182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20184
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20185
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20187
    return-object p0
.end method

.method public addTags(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 20191
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20192
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20194
    return-object p0
.end method

.method public addTags(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 20171
    if-nez p1, :cond_8

    .line 20172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20174
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20175
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20177
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 3

    .prologue
    .line 20052
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    .line 20053
    .local v0, result:Lcom/google/feedreader/extrpc/Client$TagListContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20054
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20056
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 4

    .prologue
    .line 20070
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TagListContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent;-><init>(Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 20071
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 20073
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20074
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    .line 20076
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent;->access$24902(Lcom/google/feedreader/extrpc/Client$TagListContent;Ljava/util/List;)Ljava/util/List;

    .line 20077
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 2

    .prologue
    .line 20037
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20039
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    .line 20040
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTags()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 2

    .prologue
    .line 20211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20212
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    .line 20214
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 3

    .prologue
    .line 20044
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

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
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent;
    .registers 2

    .prologue
    .line 20048
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    return-object v0
.end method

.method public getTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 20151
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    return-object p0
.end method

.method public getTagsCount()I
    .registers 2

    .prologue
    .line 20148
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20145
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 20096
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->getTagsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 20097
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->getTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20099
    const/4 v1, 0x0

    .line 20102
    :goto_12
    return v1

    .line 20096
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20102
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 20081
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TagListContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 20092
    :goto_7
    return-object v0

    .line 20082
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent;->access$24900(Lcom/google/feedreader/extrpc/Client$TagListContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 20083
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 20084
    #getter for: Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent;->access$24900(Lcom/google/feedreader/extrpc/Client$TagListContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    .line 20085
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 20092
    goto :goto_7

    .line 20087
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20088
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$TagListContent;->tags_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$TagListContent;->access$24900(Lcom/google/feedreader/extrpc/Client$TagListContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 20111
    sparse-switch v0, :sswitch_data_20

    .line 20116
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 20118
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 20114
    goto :goto_e

    .line 20123
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;

    move-result-object v0

    .line 20124
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 20125
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->addTags(Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    goto :goto_0

    .line 20111
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
    .end sparse-switch
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
    .line 20021
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20021
    check-cast p1, Lcom/google/feedreader/extrpc/Client$TagListContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TagListContent;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

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
    .line 20021
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 20217
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20218
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20220
    return-object p0
.end method

.method public setTags(ILcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20165
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20166
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20168
    return-object p0
.end method

.method public setTags(ILcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;)Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20155
    if-nez p2, :cond_8

    .line 20156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20158
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->ensureTagsIsMutable()V

    .line 20159
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$TagListContent$Builder;->tags_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20161
    return-object p0
.end method
