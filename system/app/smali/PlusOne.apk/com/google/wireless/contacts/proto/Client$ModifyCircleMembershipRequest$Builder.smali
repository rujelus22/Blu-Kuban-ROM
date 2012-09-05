.class public final Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private addCircleIds_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private removeCircleIds_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14960
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15106
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15149
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15205
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 14961
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14962
    return-void
.end method

.method static synthetic access$20100()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 1

    .prologue
    .line 14955
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 1

    .prologue
    .line 14967
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAddCircleIdsIsMutable()V
    .registers 3

    .prologue
    .line 15151
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 15152
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15153
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15155
    :cond_16
    return-void
.end method

.method private ensureRemoveCircleIdsIsMutable()V
    .registers 3

    .prologue
    .line 15207
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 15208
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15209
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15211
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14965
    return-void
.end method


# virtual methods
.method public addAddCircleIds(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15177
    if-nez p1, :cond_8

    .line 15178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15180
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureAddCircleIdsIsMutable()V

    .line 15181
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 15183
    return-object p0
.end method

.method public addAllAddCircleIds(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 15187
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureAddCircleIdsIsMutable()V

    .line 15188
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15190
    return-object p0
.end method

.method public addAllRemoveCircleIds(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 15243
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureRemoveCircleIdsIsMutable()V

    .line 15244
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15246
    return-object p0
.end method

.method public addRemoveCircleIds(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15233
    if-nez p1, :cond_8

    .line 15234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15236
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureRemoveCircleIdsIsMutable()V

    .line 15237
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 15239
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 3

    .prologue
    .line 14990
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    .line 14991
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14992
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14994
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 6

    .prologue
    .line 15008
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 15009
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15010
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15011
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15012
    or-int/lit8 v2, v2, 0x1

    .line 15014
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20302(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15015
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 15016
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15018
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15020
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20402(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 15021
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_46

    .line 15022
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15024
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15026
    :cond_46
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20502(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 15027
    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20602(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;I)I

    .line 15028
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 2

    .prologue
    .line 14971
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14972
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 14973
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 14974
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 14975
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 14976
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 14977
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 14978
    return-object p0
.end method

.method public clearAddCircleIds()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 2

    .prologue
    .line 15193
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15194
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15196
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 2

    .prologue
    .line 15142
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15144
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15145
    return-object p0
.end method

.method public clearRemoveCircleIds()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 2

    .prologue
    .line 15249
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15250
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15252
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3

    .prologue
    .line 14982
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

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
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddCircleIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 15164
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddCircleIdsCount()I
    .registers 2

    .prologue
    .line 15161
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAddCircleIdsList()Ljava/util/List;
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
    .line 15158
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14955
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;
    .registers 2

    .prologue
    .line 14986
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 15111
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getRemoveCircleIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 15220
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveCircleIdsCount()I
    .registers 2

    .prologue
    .line 15217
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveCircleIdsList()Ljava/util/List;
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
    .line 15214
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15108
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 14955
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

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
    .line 14955
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15069
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 15074
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15076
    :sswitch_d
    return-object p0

    .line 15081
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    .line 15082
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 15083
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 15085
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15086
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    goto :goto_0

    .line 15090
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    :sswitch_2a
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureAddCircleIdsIsMutable()V

    .line 15091
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 15095
    :sswitch_37
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureRemoveCircleIdsIsMutable()V

    .line 15096
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 15069
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15032
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15056
    :cond_6
    :goto_6
    return-object p0

    .line 15033
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15034
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;

    .line 15036
    :cond_14
    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20400(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 15037
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 15038
    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20400(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15039
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15046
    :cond_32
    :goto_32
    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20500(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15047
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 15048
    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20500(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    .line 15049
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 15041
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureAddCircleIdsIsMutable()V

    .line 15042
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->addCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20400(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 15051
    :cond_5e
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureRemoveCircleIdsIsMutable()V

    .line 15052
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;->access$20500(Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15130
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 15132
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15138
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15139
    return-object p0

    .line 15135
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    goto :goto_1f
.end method

.method public setAddCircleIds(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15168
    if-nez p2, :cond_8

    .line 15169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15171
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureAddCircleIdsIsMutable()V

    .line 15172
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->addCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15174
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15124
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15126
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15127
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15114
    if-nez p1, :cond_8

    .line 15115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15117
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 15119
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->bitField0_:I

    .line 15120
    return-object p0
.end method

.method public setRemoveCircleIds(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15224
    if-nez p2, :cond_8

    .line 15225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15227
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->ensureRemoveCircleIdsIsMutable()V

    .line 15228
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequest$Builder;->removeCircleIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15230
    return-object p0
.end method
