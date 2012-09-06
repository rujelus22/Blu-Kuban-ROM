.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

.field private gaiaId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9833
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 10012
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 9834
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->maybeForceBuilderInitialization()V

    .line 9835
    return-void
.end method

.method static synthetic access$13000()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 1

    .prologue
    .line 9828
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 1

    .prologue
    .line 9840
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFocusObfuscatedIdIsMutable()V
    .registers 3

    .prologue
    .line 10014
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 10015
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 10016
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 10018
    :cond_16
    return-void
.end method

.method private ensureGaiaIdIsMutable()V
    .registers 3

    .prologue
    .line 9969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 9970
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 9971
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9973
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9838
    return-void
.end method


# virtual methods
.method public addAllFocusObfuscatedId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 10050
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureFocusObfuscatedIdIsMutable()V

    .line 10051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10053
    return-object p0
.end method

.method public addAllGaiaId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 9999
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureGaiaIdIsMutable()V

    .line 10000
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10002
    return-object p0
.end method

.method public addFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10040
    if-nez p1, :cond_8

    .line 10041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10043
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureFocusObfuscatedIdIsMutable()V

    .line 10044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10046
    return-object p0
.end method

.method public addGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 9992
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureGaiaIdIsMutable()V

    .line 9993
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9995
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    .registers 3

    .prologue
    .line 9861
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    .line 9862
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9863
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9865
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    .registers 5

    .prologue
    .line 9879
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 9880
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9881
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 9882
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 9883
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9885
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13202(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Ljava/util/List;)Ljava/util/List;

    .line 9886
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 9887
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 9889
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9891
    :cond_38
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13302(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 9892
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 2

    .prologue
    .line 9844
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 9846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9847
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 9848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9849
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 2

    .prologue
    .line 10056
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 10057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 10059
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 2

    .prologue
    .line 10005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 10006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 10008
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 3

    .prologue
    .line 9853
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

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
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9828
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    .registers 2

    .prologue
    .line 9857
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedIdCount()I
    .registers 2

    .prologue
    .line 10024
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedIdList()Ljava/util/List;
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
    .line 10021
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9982
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 9979
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 9921
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
    .line 9828
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9828
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

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
    .line 9828
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9930
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_46

    .line 9935
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9937
    :sswitch_d
    return-object p0

    .line 9942
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureGaiaIdIsMutable()V

    .line 9943
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9947
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9948
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 9949
    .local v1, limit:I
    :goto_27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_35

    .line 9950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->addGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;

    goto :goto_27

    .line 9952
    :cond_35
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 9956
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_39
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureFocusObfuscatedIdIsMutable()V

    .line 9957
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9930
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0xa -> :sswitch_1f
        0x12 -> :sswitch_39
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9896
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9917
    :cond_6
    :goto_6
    return-object p0

    .line 9897
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13200(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 9898
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 9899
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13200(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    .line 9900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    .line 9907
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9908
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 9909
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 9910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 9902
    :cond_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureGaiaIdIsMutable()V

    .line 9903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13200(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 9912
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureFocusObfuscatedIdIsMutable()V

    .line 9913
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->access$13300(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setFocusObfuscatedId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10031
    if-nez p2, :cond_8

    .line 10032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10034
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureFocusObfuscatedIdIsMutable()V

    .line 10035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10037
    return-object p0
.end method

.method public setGaiaId(IJ)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9986
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->ensureGaiaIdIsMutable()V

    .line 9987
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;->gaiaId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9989
    return-object p0
.end method
