.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private search_:Z

.field private urlPattern_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3106
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3107
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->maybeForceBuilderInitialization()V

    .line 3108
    return-void
.end method

.method static synthetic access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3101
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 1

    .prologue
    .line 3101
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    .line 3146
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3147
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3150
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 1

    .prologue
    .line 3113
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3111
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    .line 3137
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3138
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3140
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 6

    .prologue
    .line 3154
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 3155
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3156
    const/4 v2, 0x0

    .line 3157
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3158
    or-int/lit8 v2, v2, 0x1

    .line 3160
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->access$3902(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3162
    or-int/lit8 v2, v2, 0x2

    .line 3164
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->access$4002(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_31

    .line 3166
    or-int/lit8 v1, v2, 0x4

    .line 3168
    :goto_28
    iget-boolean v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->access$4102(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Z)Z

    .line 3169
    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->access$4202(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;I)I

    .line 3170
    return-object v0

    :cond_31
    move v1, v2

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3117
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3119
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3121
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    .line 3123
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3124
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3262
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3263
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3265
    return-object p0
.end method

.method public clearSearch()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3324
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    .line 3327
    return-object p0
.end method

.method public clearUrlPattern()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3298
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3299
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3301
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 3

    .prologue
    .line 3128
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

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
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2

    .prologue
    .line 3132
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3101
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3244
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3246
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    move-object v2, v1

    .line 3249
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getSearch()Z
    .registers 2

    .prologue
    .line 3315
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    return v0
.end method

.method public getUrlPattern()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3280
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3281
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3282
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    move-object v2, v1

    .line 3285
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3240
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSearch()Z
    .registers 3

    .prologue
    .line 3312
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

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

.method public hasUrlPattern()Z
    .registers 3

    .prologue
    .line 3276
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3188
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 3196
    :goto_8
    return v0

    .line 3192
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->hasUrlPattern()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 3194
    goto :goto_8

    .line 3196
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3174
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 3184
    :goto_7
    return-object v0

    .line 3175
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->hasName()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3176
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->setName(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    .line 3178
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->hasUrlPattern()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3179
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->setUrlPattern(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    .line 3181
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3182
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getSearch()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->setSearch(Z)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    :cond_2f
    move-object v0, p0

    .line 3184
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 3210
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3212
    :sswitch_d
    return-object p0

    .line 3217
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3222
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3223
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    goto :goto_0

    .line 3227
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3228
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    goto :goto_0

    .line 3205
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x5a -> :sswitch_e
        0x62 -> :sswitch_1b
        0x78 -> :sswitch_28
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
    .line 3101
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3101
    check-cast p1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

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
    .line 3101
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3253
    if-nez p1, :cond_8

    .line 3254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3256
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3257
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3259
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3268
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3269
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->name_:Ljava/lang/Object;

    .line 3271
    return-void
.end method

.method public setSearch(Z)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3318
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3319
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->search_:Z

    .line 3321
    return-object p0
.end method

.method public setUrlPattern(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3289
    if-nez p1, :cond_8

    .line 3290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3292
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3293
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3295
    return-object p0
.end method

.method setUrlPattern(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3304
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->bitField0_:I

    .line 3305
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->urlPattern_:Ljava/lang/Object;

    .line 3307
    return-void
.end method
