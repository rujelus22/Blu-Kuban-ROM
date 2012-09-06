.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundlesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundlesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private localeGroup_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4150
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4151
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->maybeForceBuilderInitialization()V

    .line 4152
    return-void
.end method

.method static synthetic access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4145
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 1

    .prologue
    .line 4145
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4185
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    .line 4186
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4187
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4190
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 1

    .prologue
    .line 4157
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLocaleGroupIsMutable()V
    .registers 3

    .prologue
    .line 4262
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4264
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    .line 4266
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4155
    return-void
.end method


# virtual methods
.method public addAllLocaleGroup(Ljava/lang/Iterable;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;",
            ">;)",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;"
        }
    .end annotation

    .prologue
    .line 4329
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;>;"
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4330
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4332
    return-object p0
.end method

.method public addLocaleGroup(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4322
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4323
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4325
    return-object p0
.end method

.method public addLocaleGroup(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4305
    if-nez p2, :cond_8

    .line 4306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4308
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4309
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4311
    return-object p0
.end method

.method public addLocaleGroup(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4315
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4316
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4318
    return-object p0
.end method

.method public addLocaleGroup(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4295
    if-nez p1, :cond_8

    .line 4296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4298
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4299
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4301
    return-object p0
.end method

.method public build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3

    .prologue
    .line 4176
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    .line 4177
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4178
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4180
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 4

    .prologue
    .line 4194
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 4195
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 4197
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4198
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    .line 4200
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->access$5402(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;Ljava/util/List;)Ljava/util/List;

    .line 4201
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 2

    .prologue
    .line 4161
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4163
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    .line 4164
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLocaleGroup()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 2

    .prologue
    .line 4335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4336
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    .line 4338
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 3

    .prologue
    .line 4168
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

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
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2

    .prologue
    .line 4172
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 4275
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    return-object p0
.end method

.method public getLocaleGroupCount()I
    .registers 2

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocaleGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4269
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 4220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->getLocaleGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 4221
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->getLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4223
    const/4 v1, 0x0

    .line 4226
    :goto_12
    return v1

    .line 4220
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4226
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 4
    .parameter

    .prologue
    .line 4205
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 4216
    :goto_7
    return-object v0

    .line 4206
    :cond_8
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->access$5400(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 4207
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4208
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->access$5400(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    .line 4209
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 4216
    goto :goto_7

    .line 4211
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4212
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->access$5400(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4234
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4235
    sparse-switch v0, :sswitch_data_22

    .line 4240
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 4242
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 4238
    goto :goto_e

    .line 4247
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    .line 4248
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4249
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->addLocaleGroup(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    goto :goto_0

    .line 4235
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_f
        0xb -> :sswitch_11
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
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4145
    check-cast p1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

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
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 3
    .parameter

    .prologue
    .line 4341
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4342
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4344
    return-object p0
.end method

.method public setLocaleGroup(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4289
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4290
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4292
    return-object p0
.end method

.method public setLocaleGroup(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4279
    if-nez p2, :cond_8

    .line 4280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4282
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->ensureLocaleGroupIsMutable()V

    .line 4283
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4285
    return-object p0
.end method
