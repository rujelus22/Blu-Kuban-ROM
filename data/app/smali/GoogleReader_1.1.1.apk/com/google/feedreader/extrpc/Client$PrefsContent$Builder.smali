.class public final Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$PrefsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$PrefsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$PrefsContent;",
        "Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$PrefsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private prefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18158
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->maybeForceBuilderInitialization()V

    .line 18159
    return-void
.end method

.method static synthetic access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18152
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22400()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 1

    .prologue
    .line 18152
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18192
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    .line 18193
    .local v0, result:Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 18194
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 18197
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 1

    .prologue
    .line 18164
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePrefsIsMutable()V
    .registers 3

    .prologue
    .line 18269
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 18270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18271
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    .line 18273
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18162
    return-void
.end method


# virtual methods
.method public addAllPrefs(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 18336
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$PrefPair;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18337
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18339
    return-object p0
.end method

.method public addPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18329
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18330
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18332
    return-object p0
.end method

.method public addPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18312
    if-nez p2, :cond_8

    .line 18313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18315
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18316
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18318
    return-object p0
.end method

.method public addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 18322
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18323
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18325
    return-object p0
.end method

.method public addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 18302
    if-nez p1, :cond_8

    .line 18303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18305
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18306
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18308
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3

    .prologue
    .line 18183
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    .line 18184
    .local v0, result:Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18185
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18187
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 4

    .prologue
    .line 18201
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;-><init>(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 18202
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 18204
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18205
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    .line 18207
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->access$22602(Lcom/google/feedreader/extrpc/Client$PrefsContent;Ljava/util/List;)Ljava/util/List;

    .line 18208
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 2

    .prologue
    .line 18168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18170
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    .line 18171
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPrefs()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 2

    .prologue
    .line 18342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18343
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    .line 18345
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 3

    .prologue
    .line 18175
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

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
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2

    .prologue
    .line 18179
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18152
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "index"

    .prologue
    .line 18282
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object p0
.end method

.method public getPrefsCount()I
    .registers 2

    .prologue
    .line 18279
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18276
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 18227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->getPrefsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 18228
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 18230
    const/4 v1, 0x0

    .line 18233
    :goto_12
    return v1

    .line 18227
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18233
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 18212
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 18223
    :goto_7
    return-object v0

    .line 18213
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->access$22600(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 18214
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 18215
    #getter for: Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->access$22600(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    .line 18216
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 18223
    goto :goto_7

    .line 18218
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18219
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->access$22600(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 18242
    sparse-switch v0, :sswitch_data_20

    .line 18247
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 18249
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 18245
    goto :goto_e

    .line 18254
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    .line 18255
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18256
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->addPrefs(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    goto :goto_0

    .line 18242
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
    .line 18152
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18152
    check-cast p1, Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

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
    .line 18152
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removePrefs(I)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 18348
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18349
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18351
    return-object p0
.end method

.method public setPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18296
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18297
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->build()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18299
    return-object p0
.end method

.method public setPrefs(ILcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 18286
    if-nez p2, :cond_8

    .line 18287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18289
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->ensurePrefsIsMutable()V

    .line 18290
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18292
    return-object p0
.end method
