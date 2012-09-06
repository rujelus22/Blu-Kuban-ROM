.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundlesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionBundles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;,
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;
    }
.end annotation


# static fields
.field public static final LOCALEGROUP_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

.field private static final serialVersionUID:J


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4351
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    .line 4352
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->initFields()V

    .line 4353
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1402
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4027
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedIsInitialized:B

    .line 4050
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedSerializedSize:I

    .line 1403
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4027
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedIsInitialized:B

    .line 4050
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedSerializedSize:I

    .line 1404
    return-void
.end method

.method static synthetic access$5400(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 1

    .prologue
    .line 1408
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    .line 4026
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 1

    .prologue
    .line 4138
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5200()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4141
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4107
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    .line 4108
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4109
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v1

    .line 4111
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4118
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    .line 4119
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4120
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v1

    .line 4122
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4074
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4080
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4128
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4134
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4096
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4102
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4085
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4091
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;->access$5100(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
    .registers 2

    .prologue
    .line 1412
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    return-object p0
.end method

.method public getLocaleGroupCount()I
    .registers 2

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

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
    .line 4007
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    return-object v0
.end method

.method public getLocaleGroupOrBuilder(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;

    return-object p0
.end method

.method public getLocaleGroupOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4011
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 4052
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedSerializedSize:I

    .line 4053
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 4061
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 4055
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 4056
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 4057
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4056
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4060
    :cond_22
    iput v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedSerializedSize:I

    move v2, v1

    .line 4061
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4029
    iget-byte v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedIsInitialized:B

    .line 4030
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 4039
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 4030
    goto :goto_a

    .line 4032
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getLocaleGroupCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 4033
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 4034
    iput-byte v4, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedIsInitialized:B

    move v2, v4

    .line 4035
    goto :goto_a

    .line 4032
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4038
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->memoizedIsInitialized:B

    move v2, v3

    .line 4039
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 2

    .prologue
    .line 4139
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;
    .registers 2

    .prologue
    .line 4143
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$Builder;

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
    .line 4068
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4044
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->getSerializedSize()I

    .line 4045
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 4046
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;->localeGroup_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 4045
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 4048
    :cond_1d
    return-void
.end method
