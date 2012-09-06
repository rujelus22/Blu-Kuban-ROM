.class public final Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$BundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;,
        Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;,
        Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ISADDED_FIELD_NUMBER:I = 0x3

.field public static final ISFEATURED_FIELD_NUMBER:I = 0x5

.field public static final SUBSCRIPTIONS_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private isadded_:Z

.field private isfeatured_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private subscriptions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21371
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21372
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->initFields()V

    .line 21373
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20291
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20839
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    .line 20878
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedSerializedSize:I

    .line 20292
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20839
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    .line 20878
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedSerializedSize:I

    .line 20293
    return-void
.end method

.method static synthetic access$25902(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26002(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26102(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z

    return p1
.end method

.method static synthetic access$26200(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20286
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26202(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26302(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z

    return p1
.end method

.method static synthetic access$26402(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20286
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 1

    .prologue
    .line 20297
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20748
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    .line 20749
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 20750
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20752
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 20755
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
    .line 20780
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    .line 20781
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 20782
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20784
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 20787
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20833
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    .line 20834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    .line 20835
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z

    .line 20836
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    .line 20837
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z

    .line 20838
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 1

    .prologue
    .line 20982
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25700()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20985
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20951
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    .line 20952
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 20953
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    .line 20955
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20962
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    .line 20963
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 20964
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    .line 20966
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20918
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20924
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20972
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20978
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20940
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20946
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20929
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20935
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;->access$25600(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2

    .prologue
    .line 20301
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20286
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 20734
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    .line 20735
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 20736
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 20744
    :goto_9
    return-object v4

    .line 20738
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 20740
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 20741
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 20742
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 20744
    goto :goto_9
.end method

.method public getIsadded()Z
    .registers 2

    .prologue
    .line 20798
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z

    return v0
.end method

.method public getIsfeatured()Z
    .registers 2

    .prologue
    .line 20829
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 20880
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedSerializedSize:I

    .line 20881
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 20905
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 20883
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 20884
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 20885
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20888
    :cond_1a
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 20889
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20892
    :cond_29
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 20893
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20896
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 20897
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20896
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 20900
    :cond_50
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_60

    .line 20901
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20904
    :cond_60
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedSerializedSize:I

    move v2, v1

    .line 20905
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 20815
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    return-object p0
.end method

.method public getSubscriptionsCount()I
    .registers 2

    .prologue
    .line 20812
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20805
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method public getSubscriptionsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20819
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;

    return-object p0
.end method

.method public getSubscriptionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20809
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 20766
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    .line 20767
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 20768
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 20776
    :goto_9
    return-object v4

    .line 20770
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 20772
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 20773
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 20774
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 20776
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 20731
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsadded()Z
    .registers 3

    .prologue
    .line 20795
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

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

.method public hasIsfeatured()Z
    .registers 3

    .prologue
    .line 20826
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 20763
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20841
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    .line 20842
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 20855
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 20842
    goto :goto_a

    .line 20844
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 20845
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    move v2, v3

    .line 20846
    goto :goto_a

    .line 20848
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getSubscriptionsCount()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 20849
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 20850
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    move v2, v3

    .line 20851
    goto :goto_a

    .line 20848
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 20854
    :cond_2f
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->memoizedIsInitialized:B

    move v2, v4

    .line 20855
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 20983
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20286
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;
    .registers 2

    .prologue
    .line 20987
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20286
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$Builder;

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
    .line 20912
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 20860
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getSerializedSize()I

    .line 20861
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 20862
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20864
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 20865
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20867
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 20868
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isadded_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 20870
    :cond_2c
    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 20871
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20870
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 20873
    :cond_45
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_53

    .line 20874
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isfeatured_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 20876
    :cond_53
    return-void
.end method
