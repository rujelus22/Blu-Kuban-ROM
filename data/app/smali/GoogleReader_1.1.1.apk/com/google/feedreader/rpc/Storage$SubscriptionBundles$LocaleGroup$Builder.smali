.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bundle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private hideDirectoryCategories_:Z

.field private locale_:Ljava/lang/Object;

.field private serviceDefinition_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3586
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3758
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3587
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->maybeForceBuilderInitialization()V

    .line 3588
    return-void
.end method

.method static synthetic access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 1

    .prologue
    .line 3581
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3627
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    .line 3628
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3629
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3632
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 1

    .prologue
    .line 3593
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBundleIsMutable()V
    .registers 3

    .prologue
    .line 3797
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 3798
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3799
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3801
    :cond_16
    return-void
.end method

.method private ensureServiceDefinitionIsMutable()V
    .registers 3

    .prologue
    .line 3886
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3887
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3888
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3890
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3591
    return-void
.end method


# virtual methods
.method public addAllBundle(Ljava/lang/Iterable;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;)",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 3864
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;>;"
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3865
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3867
    return-object p0
.end method

.method public addAllServiceDefinition(Ljava/lang/Iterable;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;)",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 3953
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;>;"
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3954
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3956
    return-object p0
.end method

.method public addBundle(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3858
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3860
    return-object p0
.end method

.method public addBundle(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3840
    if-nez p2, :cond_8

    .line 3841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3843
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3844
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3846
    return-object p0
.end method

.method public addBundle(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3850
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3851
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3853
    return-object p0
.end method

.method public addBundle(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3830
    if-nez p1, :cond_8

    .line 3831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3833
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3834
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3836
    return-object p0
.end method

.method public addServiceDefinition(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3946
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3947
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3949
    return-object p0
.end method

.method public addServiceDefinition(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3929
    if-nez p2, :cond_8

    .line 3930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3932
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3933
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3935
    return-object p0
.end method

.method public addServiceDefinition(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3939
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3940
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3942
    return-object p0
.end method

.method public addServiceDefinition(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3919
    if-nez p1, :cond_8

    .line 3920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3922
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3923
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3925
    return-object p0
.end method

.method public build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3

    .prologue
    .line 3618
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    .line 3619
    .local v0, result:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3620
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3622
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 6

    .prologue
    .line 3636
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 3637
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3638
    const/4 v2, 0x0

    .line 3639
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3640
    or-int/lit8 v2, v2, 0x1

    .line 3642
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4602(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 3644
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3645
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3647
    :cond_2a
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4702(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/util/List;)Ljava/util/List;

    .line 3648
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 3649
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3650
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3652
    :cond_44
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4802(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/util/List;)Ljava/util/List;

    .line 3653
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_5a

    .line 3654
    or-int/lit8 v1, v2, 0x2

    .line 3656
    :goto_51
    iget-boolean v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z
    invoke-static {v0, v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4902(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Z)Z

    .line 3657
    #setter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$5002(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;I)I

    .line 3658
    return-object v0

    :cond_5a
    move v1, v2

    goto :goto_51
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3599
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3601
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3603
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    .line 3605
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3606
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clear()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBundle()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3871
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3873
    return-object p0
.end method

.method public clearHideDirectoryCategories()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3986
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    .line 3989
    return-object p0
.end method

.method public clearLocale()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3782
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3783
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3785
    return-object p0
.end method

.method public clearServiceDefinition()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3960
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3962
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3

    .prologue
    .line 3610
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

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
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->clone()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "index"

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object p0
.end method

.method public getBundleCount()I
    .registers 2

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2

    .prologue
    .line 3614
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHideDirectoryCategories()Z
    .registers 2

    .prologue
    .line 3977
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3764
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 3765
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3766
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    move-object v2, v1

    .line 3769
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

.method public getServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "index"

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    return-object p0
.end method

.method public getServiceDefinitionCount()I
    .registers 2

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceDefinitionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHideDirectoryCategories()Z
    .registers 3

    .prologue
    .line 3974
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocale()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3760
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3693
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hasLocale()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 3709
    :goto_8
    return v1

    .line 3697
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getBundleCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3698
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    .line 3700
    goto :goto_8

    .line 3697
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3703
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getServiceDefinitionCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 3704
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->getServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_32

    move v1, v2

    .line 3706
    goto :goto_8

    .line 3703
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3709
    :cond_35
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3662
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 3689
    :goto_7
    return-object v0

    .line 3663
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3664
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->setLocale(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    .line 3666
    :cond_15
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4700(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 3667
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3668
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4700(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    .line 3669
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3676
    :cond_33
    :goto_33
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 3677
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3678
    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    .line 3679
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3686
    :cond_51
    :goto_51
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hasHideDirectoryCategories()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3687
    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getHideDirectoryCategories()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->setHideDirectoryCategories(Z)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    :cond_5e
    move-object v0, p0

    .line 3689
    goto :goto_7

    .line 3671
    :cond_60
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3672
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4700(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_33

    .line 3681
    :cond_6d
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3682
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->access$4800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_51
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3717
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3718
    sparse-switch v0, :sswitch_data_4c

    .line 3723
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3725
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 3721
    goto :goto_e

    .line 3730
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3731
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    goto :goto_0

    .line 3735
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;

    move-result-object v0

    .line 3736
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3737
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->addBundle(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    goto :goto_0

    .line 3741
    :sswitch_2e
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    .line 3742
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3743
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->addServiceDefinition(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    goto :goto_0

    .line 3747
    :sswitch_3f
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    goto :goto_0

    .line 3718
    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_f
        0x12 -> :sswitch_11
        0x1b -> :sswitch_1e
        0x53 -> :sswitch_2e
        0x68 -> :sswitch_3f
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
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3581
    check-cast p1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

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
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3876
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3877
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3879
    return-object p0
.end method

.method public removeServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3965
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3966
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3968
    return-object p0
.end method

.method public setBundle(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3824
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3825
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3827
    return-object p0
.end method

.method public setBundle(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3814
    if-nez p2, :cond_8

    .line 3815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3817
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureBundleIsMutable()V

    .line 3818
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3820
    return-object p0
.end method

.method public setHideDirectoryCategories(Z)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3980
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3981
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->hideDirectoryCategories_:Z

    .line 3983
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3773
    if-nez p1, :cond_8

    .line 3774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3776
    :cond_8
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3777
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3779
    return-object p0
.end method

.method setLocale(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 3788
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->bitField0_:I

    .line 3789
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->locale_:Ljava/lang/Object;

    .line 3791
    return-void
.end method

.method public setServiceDefinition(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3913
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3914
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->build()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3916
    return-object p0
.end method

.method public setServiceDefinition(ILcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3903
    if-nez p2, :cond_8

    .line 3904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3906
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->ensureServiceDefinitionIsMutable()V

    .line 3907
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3909
    return-object p0
.end method
