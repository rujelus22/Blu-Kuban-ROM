.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$BundleOrBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_FIELD_NUMBER:I = 0x3

.field public static final HIDE_DIRECTORY_CATEGORIES_FIELD_NUMBER:I = 0xd

.field public static final LOCALE_FIELD_NUMBER:I = 0x2

.field public static final SERVICEDEFINITION_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3996
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    .line 3997
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->initFields()V

    .line 3998
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1443
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3432
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    .line 3474
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedSerializedSize:I

    .line 1444
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3432
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    .line 3474
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedSerializedSize:I

    .line 1445
    return-void
.end method

.method static synthetic access$4602(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    iput p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 1

    .prologue
    .line 1449
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    return-object v0
.end method

.method private getLocaleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3363
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    .line 3364
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3365
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3367
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    move-object v2, v0

    .line 3370
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    .line 3428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    .line 3429
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    .line 3430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z

    .line 3431
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 1

    .prologue
    .line 3574
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4400()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3577
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3543
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    .line 3544
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3545
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    .line 3547
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3554
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    .line 3555
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3556
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v1

    .line 3558
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3510
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3516
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3564
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3570
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3532
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3538
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3521
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3527
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;->access$4300(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 3
    .parameter "index"

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object p0
.end method

.method public getBundleCount()I
    .registers 2

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

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
    .line 3378
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    return-object v0
.end method

.method public getBundleOrBuilder(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$BundleOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$BundleOrBuilder;

    return-object p0
.end method

.method public getBundleOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$BundleOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 2

    .prologue
    .line 1453
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHideDirectoryCategories()Z
    .registers 2

    .prologue
    .line 3423
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3349
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    .line 3350
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3351
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3359
    :goto_9
    return-object v4

    .line 3353
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3355
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3356
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3357
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->locale_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3359
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 3476
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedSerializedSize:I

    .line 3477
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 3497
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 3479
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 3480
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 3481
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3484
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 3485
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 3488
    :cond_33
    const/4 v0, 0x0

    :goto_34
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 3489
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3488
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 3492
    :cond_4e
    iget v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_5d

    .line 3493
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3496
    :cond_5d
    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedSerializedSize:I

    move v2, v1

    .line 3497
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "index"

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    return-object p0
.end method

.method public getServiceDefinitionCount()I
    .registers 2

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

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
    .line 3399
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    return-object v0
.end method

.method public getServiceDefinitionOrBuilder(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;

    return-object p0
.end method

.method public getServiceDefinitionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    return-object v0
.end method

.method public hasHideDirectoryCategories()Z
    .registers 3

    .prologue
    .line 3420
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

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

.method public hasLocale()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3346
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3434
    iget-byte v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    .line 3435
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 3454
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 3435
    goto :goto_a

    .line 3437
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hasLocale()Z

    move-result v2

    if-nez v2, :cond_17

    .line 3438
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    move v2, v3

    .line 3439
    goto :goto_a

    .line 3441
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getBundleCount()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 3442
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 3443
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    move v2, v3

    .line 3444
    goto :goto_a

    .line 3441
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 3447
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getServiceDefinitionCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 3448
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_44

    .line 3449
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    move v2, v3

    .line 3450
    goto :goto_a

    .line 3447
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 3453
    :cond_47
    iput-byte v4, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->memoizedIsInitialized:B

    move v2, v4

    .line 3454
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3575
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;
    .registers 2

    .prologue
    .line 3579
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3504
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3459
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getSerializedSize()I

    .line 3460
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 3461
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_13
    move v1, v3

    .line 3463
    :goto_14
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 3464
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bundle_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 3463
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_2c
    move v1, v3

    .line 3466
    :goto_2d
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 3467
    const/16 v2, 0xa

    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->serviceDefinition_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 3466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 3469
    :cond_46
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_53

    .line 3470
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->hideDirectoryCategories_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3472
    :cond_53
    return-void
.end method
