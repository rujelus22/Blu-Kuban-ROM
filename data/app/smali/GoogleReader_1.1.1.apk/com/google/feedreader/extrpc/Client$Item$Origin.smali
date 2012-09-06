.class public final Lcom/google/feedreader/extrpc/Client$Item$Origin;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$OriginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    }
.end annotation


# static fields
.field public static final AUTHOR_BROADCAST_STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_HTML_URL_FIELD_NUMBER:I = 0x4

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x1

.field public static final STREAM_TITLE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Origin;

.field private static final serialVersionUID:J


# instance fields
.field private authorBroadcastStreamId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamHtmlUrl_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private streamTitle_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4142
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 4143
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->initFields()V

    .line 4144
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3563
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3711
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedIsInitialized:B

    .line 3741
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedSerializedSize:I

    .line 3564
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3565
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3711
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedIsInitialized:B

    .line 3741
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedSerializedSize:I

    .line 3565
    return-void
.end method

.method static synthetic access$4702(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/feedreader/extrpc/Client$Item$Origin;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3558
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    return p1
.end method

.method private getAuthorBroadcastStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3630
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 3631
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3632
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3634
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 3637
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 1

    .prologue
    .line 3569
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    return-object v0
.end method

.method private getStreamHtmlUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3694
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    .line 3695
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3696
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3698
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 3701
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3598
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    .line 3599
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3600
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3602
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 3605
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

.method private getStreamTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3662
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    .line 3663
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3664
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3666
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    move-object v2, v0

    .line 3669
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
    .line 3706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    .line 3707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 3708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    .line 3709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    .line 3710
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 1

    .prologue
    .line 3841
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4500()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3844
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3810
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    .line 3811
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3812
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    .line 3814
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3821
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    .line 3822
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3823
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    .line 3825
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3777
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3783
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3831
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3837
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3799
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3805
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3788
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3794
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorBroadcastStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3616
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 3617
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3618
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3626
    :goto_9
    return-object v4

    .line 3620
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3622
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3623
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3624
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3626
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2

    .prologue
    .line 3573
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3558
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3743
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedSerializedSize:I

    .line 3744
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 3764
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 3746
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 3747
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 3748
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3751
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 3752
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getAuthorBroadcastStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3755
    :cond_29
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 3756
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3759
    :cond_39
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 3760
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3763
    :cond_4a
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedSerializedSize:I

    move v1, v0

    .line 3764
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStreamHtmlUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3680
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    .line 3681
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3682
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3690
    :goto_9
    return-object v4

    .line 3684
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3686
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3687
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3688
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3690
    goto :goto_9
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3584
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    .line 3585
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3586
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3594
    :goto_9
    return-object v4

    .line 3588
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3590
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3591
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3592
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3594
    goto :goto_9
.end method

.method public getStreamTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3648
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    .line 3649
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3650
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3658
    :goto_9
    return-object v4

    .line 3652
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3654
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3655
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3656
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3658
    goto :goto_9
.end method

.method public hasAuthorBroadcastStreamId()Z
    .registers 3

    .prologue
    .line 3613
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

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

.method public hasStreamHtmlUrl()Z
    .registers 3

    .prologue
    .line 3677
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3581
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStreamTitle()Z
    .registers 3

    .prologue
    .line 3645
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3713
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedIsInitialized:B

    .line 3714
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 3721
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 3714
    goto :goto_a

    .line 3716
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->hasStreamId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3717
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedIsInitialized:B

    move v1, v3

    .line 3718
    goto :goto_a

    .line 3720
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->memoizedIsInitialized:B

    move v1, v2

    .line 3721
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 3842
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3558
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 3846
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3558
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

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
    .line 3771
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

    .line 3726
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getSerializedSize()I

    .line 3727
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 3728
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3730
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 3731
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getAuthorBroadcastStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3733
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 3734
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3736
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 3737
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3739
    :cond_3d
    return-void
.end method
