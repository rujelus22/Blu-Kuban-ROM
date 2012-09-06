.class public final Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$SubscriptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    }
.end annotation


# static fields
.field public static final FIXED_FIELD_NUMBER:I = 0xe

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x8

.field public static final TITLE_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fixed_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1996
    new-instance v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    .line 1997
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->initFields()V

    .line 1998
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1536
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1629
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    .line 1660
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedSerializedSize:I

    .line 1537
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1531
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;-><init>(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1629
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    .line 1660
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedSerializedSize:I

    .line 1538
    return-void
.end method

.method static synthetic access$2102(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1531
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->fixed_:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1531
    iput p1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 1

    .prologue
    .line 1542
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    return-object v0
.end method

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    .line 1572
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1573
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1575
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 1578
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1603
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    .line 1604
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1605
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1607
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 1610
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
    .line 1625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    .line 1627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->fixed_:Z

    .line 1628
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    .registers 1

    .prologue
    .line 1756
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->create()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1900()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1759
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    .line 1726
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1727
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    .line 1729
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    .line 1737
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1738
    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v1

    .line 1740
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1698
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1746
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1752
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1714
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1703
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1709
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;->access$1800(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
    .registers 2

    .prologue
    .line 1546
    sget-object v0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->defaultInstance:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getFixed()Z
    .registers 2

    .prologue
    .line 1621
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->fixed_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1662
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedSerializedSize:I

    .line 1663
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1679
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1665
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1666
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 1667
    const/16 v2, 0x8

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1670
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 1671
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1674
    :cond_2c
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    .line 1675
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->fixed_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1678
    :cond_3c
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedSerializedSize:I

    move v1, v0

    .line 1679
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1557
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    .line 1558
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1559
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1567
    :goto_9
    return-object v4

    .line 1561
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1563
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1564
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1565
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 1567
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1589
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    .line 1590
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1591
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1599
    :goto_9
    return-object v4

    .line 1593
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1595
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1596
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1597
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 1599
    goto :goto_9
.end method

.method public hasFixed()Z
    .registers 3

    .prologue
    .line 1618
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1554
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 1586
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

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

    .line 1631
    iget-byte v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    .line 1632
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 1643
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 1632
    goto :goto_a

    .line 1634
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->hasStreamId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1635
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    move v1, v2

    .line 1636
    goto :goto_a

    .line 1638
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1639
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    move v1, v2

    .line 1640
    goto :goto_a

    .line 1642
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->memoizedIsInitialized:B

    move v1, v3

    .line 1643
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    .registers 2

    .prologue
    .line 1757
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;
    .registers 2

    .prologue
    .line 1761
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->newBuilder(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->toBuilder()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription$Builder;

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
    .line 1686
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
    .line 1648
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getSerializedSize()I

    .line 1649
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1650
    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1652
    :cond_13
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 1653
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1655
    :cond_23
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 1656
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->fixed_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1658
    :cond_31
    return-void
.end method
