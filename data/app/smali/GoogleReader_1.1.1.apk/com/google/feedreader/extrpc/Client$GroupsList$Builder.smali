.class public final Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$GroupsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$GroupsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$GroupsList;",
        "Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$GroupsListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private sharingGroups_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14153
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->maybeForceBuilderInitialization()V

    .line 14154
    return-void
.end method

.method static synthetic access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14147
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17500()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 1

    .prologue
    .line 14147
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14187
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    .line 14188
    .local v0, result:Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 14189
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 14192
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 1

    .prologue
    .line 14159
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSharingGroupsIsMutable()V
    .registers 3

    .prologue
    .line 14264
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 14265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14266
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    .line 14268
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14157
    return-void
.end method


# virtual methods
.method public addAllSharingGroups(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;"
        }
    .end annotation

    .prologue
    .line 14331
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14332
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14334
    return-object p0
.end method

.method public addSharingGroups(ILcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14324
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14325
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->build()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14327
    return-object p0
.end method

.method public addSharingGroups(ILcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14307
    if-nez p2, :cond_8

    .line 14308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14310
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14311
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14313
    return-object p0
.end method

.method public addSharingGroups(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 14317
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14318
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->build()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14320
    return-object p0
.end method

.method public addSharingGroups(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 14297
    if-nez p1, :cond_8

    .line 14298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14300
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14301
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14303
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3

    .prologue
    .line 14178
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    .line 14179
    .local v0, result:Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14180
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14182
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->build()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 4

    .prologue
    .line 14196
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList;-><init>(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 14197
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 14199
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14200
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    .line 14202
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList;->access$17702(Lcom/google/feedreader/extrpc/Client$GroupsList;Ljava/util/List;)Ljava/util/List;

    .line 14203
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 2

    .prologue
    .line 14163
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14165
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    .line 14166
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSharingGroups()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 2

    .prologue
    .line 14337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14338
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    .line 14340
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 3

    .prologue
    .line 14170
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

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
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2

    .prologue
    .line 14174
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14147
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public getSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 14277
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    return-object p0
.end method

.method public getSharingGroupsCount()I
    .registers 2

    .prologue
    .line 14274
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSharingGroupsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14271
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 14222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->getSharingGroupsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 14223
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->getSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 14225
    const/4 v1, 0x0

    .line 14228
    :goto_12
    return v1

    .line 14222
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14228
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 14207
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 14218
    :goto_7
    return-object v0

    .line 14208
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList;->access$17700(Lcom/google/feedreader/extrpc/Client$GroupsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 14209
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 14210
    #getter for: Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList;->access$17700(Lcom/google/feedreader/extrpc/Client$GroupsList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    .line 14211
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 14218
    goto :goto_7

    .line 14213
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14214
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$GroupsList;->access$17700(Lcom/google/feedreader/extrpc/Client$GroupsList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 14237
    sparse-switch v0, :sswitch_data_20

    .line 14242
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 14244
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 14240
    goto :goto_e

    .line 14249
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    .line 14250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14251
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->addSharingGroups(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    goto :goto_0

    .line 14237
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
    .line 14147
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14147
    check-cast p1, Lcom/google/feedreader/extrpc/Client$GroupsList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

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
    .line 14147
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 14343
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14344
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14346
    return-object p0
.end method

.method public setSharingGroups(ILcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 14291
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14292
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->build()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14294
    return-object p0
.end method

.method public setSharingGroups(ILcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 14281
    if-nez p2, :cond_8

    .line 14282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14284
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->ensureSharingGroupsIsMutable()V

    .line 14285
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14287
    return-object p0
.end method
