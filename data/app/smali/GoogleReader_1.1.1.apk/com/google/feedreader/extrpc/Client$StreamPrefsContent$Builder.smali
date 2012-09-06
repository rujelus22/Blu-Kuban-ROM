.class public final Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamPrefsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamPrefsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private streamprefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17776
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->maybeForceBuilderInitialization()V

    .line 17777
    return-void
.end method

.method static synthetic access$21900(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17770
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22000()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 1

    .prologue
    .line 17770
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17810
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    .line 17811
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 17812
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 17815
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 1

    .prologue
    .line 17782
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamprefsIsMutable()V
    .registers 3

    .prologue
    .line 17887
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 17888
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17889
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    .line 17891
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17780
    return-void
.end method


# virtual methods
.method public addAllStreamprefs(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 17954
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17955
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17957
    return-object p0
.end method

.method public addStreamprefs(ILcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17947
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17948
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17950
    return-object p0
.end method

.method public addStreamprefs(ILcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17930
    if-nez p2, :cond_8

    .line 17931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17933
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17934
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17936
    return-object p0
.end method

.method public addStreamprefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 17940
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17941
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17943
    return-object p0
.end method

.method public addStreamprefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 17920
    if-nez p1, :cond_8

    .line 17921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17923
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17924
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17926
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 3

    .prologue
    .line 17801
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    .line 17802
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17803
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17805
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 4

    .prologue
    .line 17819
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 17820
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 17822
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17823
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    .line 17825
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->access$22202(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;Ljava/util/List;)Ljava/util/List;

    .line 17826
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 2

    .prologue
    .line 17786
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17787
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17788
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    .line 17789
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStreamprefs()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 2

    .prologue
    .line 17960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17961
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    .line 17963
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 3

    .prologue
    .line 17793
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

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
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;
    .registers 2

    .prologue
    .line 17797
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public getStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 17900
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    return-object p0
.end method

.method public getStreamprefsCount()I
    .registers 2

    .prologue
    .line 17897
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamprefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17894
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 17845
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->getStreamprefsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 17846
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->getStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 17848
    const/4 v1, 0x0

    .line 17851
    :goto_12
    return v1

    .line 17845
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17851
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 17830
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 17841
    :goto_7
    return-object v0

    .line 17831
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->access$22200(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 17832
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 17833
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->access$22200(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    .line 17834
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 17841
    goto :goto_7

    .line 17836
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17837
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->streamprefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;->access$22200(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17859
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 17860
    sparse-switch v0, :sswitch_data_20

    .line 17865
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 17867
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 17863
    goto :goto_e

    .line 17872
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;

    move-result-object v0

    .line 17873
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17874
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->addStreamprefs(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    goto :goto_0

    .line 17860
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
    .line 17770
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17770
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamPrefsContent;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

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
    .line 17770
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeStreamprefs(I)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 17966
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17967
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17969
    return-object p0
.end method

.method public setStreamprefs(ILcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 17914
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17915
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17917
    return-object p0
.end method

.method public setStreamprefs(ILcom/google/feedreader/extrpc/Client$StreamPrefsContent$StreamPrefsEntry;)Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 17904
    if-nez p2, :cond_8

    .line 17905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17907
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->ensureStreamprefsIsMutable()V

    .line 17908
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamPrefsContent$Builder;->streamprefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17910
    return-object p0
.end method
