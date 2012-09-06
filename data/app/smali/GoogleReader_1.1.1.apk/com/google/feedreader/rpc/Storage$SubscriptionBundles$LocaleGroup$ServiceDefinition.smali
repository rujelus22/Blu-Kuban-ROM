.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinitionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDefinition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0xb

.field public static final SEARCH_FIELD_NUMBER:I = 0xf

.field public static final URL_PATTERN_FIELD_NUMBER:I = 0xc

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private search_:Z

.field private urlPattern_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3334
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    .line 3335
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->initFields()V

    .line 3336
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2874
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2967
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    .line 2998
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedSerializedSize:I

    .line 2875
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2876
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2967
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    .line 2998
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedSerializedSize:I

    .line 2876
    return-void
.end method

.method static synthetic access$3902(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    iput p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 1

    .prologue
    .line 2880
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2909
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    .line 2910
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2911
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2913
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    move-object v2, v0

    .line 2916
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

.method private getUrlPatternBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2941
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    .line 2942
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2943
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2945
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    move-object v2, v0

    .line 2948
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
    .line 2963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    .line 2964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    .line 2965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z

    .line 2966
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 1

    .prologue
    .line 3094
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3700()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3097
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    .line 3064
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3065
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    .line 3067
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3074
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    .line 3075
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3076
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v1

    .line 3078
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3036
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3090
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3052
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3058
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3041
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3047
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;->access$3600(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    .registers 2

    .prologue
    .line 2884
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2895
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    .line 2896
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2897
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2905
    :goto_9
    return-object v4

    .line 2899
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2901
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2902
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2903
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->name_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2905
    goto :goto_9
.end method

.method public getSearch()Z
    .registers 2

    .prologue
    .line 2959
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 3000
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedSerializedSize:I

    .line 3001
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 3017
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 3003
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 3004
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 3005
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3008
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 3009
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPatternBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3012
    :cond_2c
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    .line 3013
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3016
    :cond_3c
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedSerializedSize:I

    move v1, v0

    .line 3017
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getUrlPattern()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2927
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    .line 2928
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2929
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2937
    :goto_9
    return-object v4

    .line 2931
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2933
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2934
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2935
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->urlPattern_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 2937
    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2892
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

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
    .line 2956
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

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
    .line 2924
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2969
    iget-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    .line 2970
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 2981
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 2970
    goto :goto_a

    .line 2972
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->hasName()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2973
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    move v1, v2

    .line 2974
    goto :goto_a

    .line 2976
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->hasUrlPattern()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2977
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    move v1, v2

    .line 2978
    goto :goto_a

    .line 2980
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->memoizedIsInitialized:B

    move v1, v3

    .line 2981
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3095
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;
    .registers 2

    .prologue
    .line 3099
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition$Builder;

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
    .line 3024
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getSerializedSize()I

    .line 2987
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2988
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2990
    :cond_13
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 2991
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPatternBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2993
    :cond_23
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 2994
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->search_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2996
    :cond_31
    return-void
.end method
