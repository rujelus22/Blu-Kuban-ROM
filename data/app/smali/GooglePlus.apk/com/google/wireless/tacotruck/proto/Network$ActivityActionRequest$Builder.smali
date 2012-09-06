.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private deleteCommentId_:Lcom/google/protobuf/LazyStringList;

.field private reportCommentId_:Lcom/google/protobuf/LazyStringList;

.field private reverseAction_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10796
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10970
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10994
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 11051
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 11107
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10797
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 10798
    return-void
.end method

.method static synthetic access$13900()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 1

    .prologue
    .line 10791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 1

    .prologue
    .line 10803
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteCommentIdIsMutable()V
    .registers 3

    .prologue
    .line 11053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 11054
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 11055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11057
    :cond_17
    return-void
.end method

.method private ensureReportCommentIdIsMutable()V
    .registers 3

    .prologue
    .line 11109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 11110
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 11111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11113
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10801
    return-void
.end method


# virtual methods
.method public addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 11089
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 11090
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11092
    return-object p0
.end method

.method public addAllReportCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 11145
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 11146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11148
    return-object p0
.end method

.method public addDeleteCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11079
    if-nez p1, :cond_8

    .line 11080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11082
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 11083
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11085
    return-object p0
.end method

.method public addReportCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11135
    if-nez p1, :cond_8

    .line 11136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11138
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 11139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 11141
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 3

    .prologue
    .line 10830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 10831
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10832
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10834
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 6

    .prologue
    .line 10848
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 10849
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10850
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10851
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10852
    or-int/lit8 v2, v2, 0x1

    .line 10854
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14102(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10855
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10856
    or-int/lit8 v2, v2, 0x2

    .line 10858
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14202(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10859
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 10860
    or-int/lit8 v2, v2, 0x4

    .line 10862
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14302(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Z)Z

    .line 10863
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 10864
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10866
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10868
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14402(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10869
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_60

    .line 10870
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10872
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10874
    :cond_60
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14502(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10875
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14602(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;I)I

    .line 10876
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10807
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10808
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 10813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10814
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10815
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10816
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10817
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10818
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 11018
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11019
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 11021
    return-object p0
.end method

.method public clearDeleteCommentId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 11095
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 11096
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11098
    return-object p0
.end method

.method public clearReportCommentId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 11151
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 11152
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11154
    return-object p0
.end method

.method public clearReverseAction()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 11044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 11047
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10988
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10990
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3

    .prologue
    .line 10822
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

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
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10999
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 11000
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11001
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11002
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 11005
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 2

    .prologue
    .line 10826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11066
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteCommentIdCount()I
    .registers 2

    .prologue
    .line 11063
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteCommentIdList()Ljava/util/List;
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
    .line 11060
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReportCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11122
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReportCommentIdCount()I
    .registers 2

    .prologue
    .line 11119
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getReportCommentIdList()Ljava/util/List;
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
    .line 11116
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReverseAction()Z
    .registers 2

    .prologue
    .line 11035
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2

    .prologue
    .line 10975
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 10996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

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

.method public hasReverseAction()Z
    .registers 3

    .prologue
    .line 11032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10972
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10914
    const/4 v0, 0x1

    return v0
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
    .line 10791
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10791
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

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
    .line 10791
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10923
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 10928
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10930
    :sswitch_d
    return-object p0

    .line 10935
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10936
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v2

    .line 10937
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    if-eqz v2, :cond_0

    .line 10938
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10939
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_0

    .line 10944
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 10949
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    goto :goto_0

    .line 10954
    :sswitch_3b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10955
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 10959
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10960
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 10923
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10880
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10910
    :cond_6
    :goto_6
    return-object p0

    .line 10881
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10882
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10884
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10885
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10887
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasReverseAction()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 10888
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getReverseAction()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setReverseAction(Z)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10890
    :cond_2e
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14400(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 10891
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 10892
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14400(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10893
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10900
    :cond_4c
    :goto_4c
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14500(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10901
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 10902
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14500(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 10895
    :cond_6b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10896
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14400(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c

    .line 10905
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10906
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14500(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11009
    if-nez p1, :cond_8

    .line 11010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11012
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11013
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 11015
    return-object p0
.end method

.method public setDeleteCommentId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11070
    if-nez p2, :cond_8

    .line 11071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11073
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 11074
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11076
    return-object p0
.end method

.method public setReportCommentId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11126
    if-nez p2, :cond_8

    .line 11127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11129
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 11130
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11132
    return-object p0
.end method

.method public setReverseAction(Z)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11038
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 11039
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 11041
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10978
    if-nez p1, :cond_8

    .line 10979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10981
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10982
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10984
    return-object p0
.end method
