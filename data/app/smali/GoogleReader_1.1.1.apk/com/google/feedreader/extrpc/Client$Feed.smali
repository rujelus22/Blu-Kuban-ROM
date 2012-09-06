.class public final Lcom/google/feedreader/extrpc/Client$Feed;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$FeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    }
.end annotation


# static fields
.field public static final HTMLURL_FIELD_NUMBER:I = 0x2

.field public static final STREAMID_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Feed;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private htmlUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14885
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Feed;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Feed;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Feed;

    .line 14886
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Feed;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Feed;->initFields()V

    .line 14887
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14380
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14495
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    .line 14530
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedSerializedSize:I

    .line 14381
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Feed$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14375
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed;-><init>(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14382
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14495
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    .line 14530
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedSerializedSize:I

    .line 14382
    return-void
.end method

.method static synthetic access$18102(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14375
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18202(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14375
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/feedreader/extrpc/Client$Feed;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14375
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18402(Lcom/google/feedreader/extrpc/Client$Feed;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14375
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 1

    .prologue
    .line 14386
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Feed;

    return-object v0
.end method

.method private getHtmlUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14447
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    .line 14448
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 14449
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14451
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    move-object v2, v0

    .line 14454
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
    .line 14479
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    .line 14480
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 14481
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14483
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 14486
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
    .line 14415
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    .line 14416
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 14417
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14419
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 14422
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
    .line 14491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    .line 14492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    .line 14493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    .line 14494
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 1

    .prologue
    .line 14626
    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->create()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17900()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14629
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14595
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    .line 14596
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 14597
    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    .line 14599
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14606
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    .line 14607
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 14608
    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v1

    .line 14610
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14562
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14568
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14616
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14622
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14584
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14590
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14573
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14579
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Feed$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Feed;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed$Builder;->access$17800(Lcom/google/feedreader/extrpc/Client$Feed$Builder;)Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Feed;
    .registers 2

    .prologue
    .line 14390
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Feed;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Feed;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14375
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Feed;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 14433
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    .line 14434
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 14435
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 14443
    :goto_9
    return-object v4

    .line 14437
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 14439
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14440
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 14441
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Feed;->htmlUrl_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 14443
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14532
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedSerializedSize:I

    .line 14533
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 14549
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 14535
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 14536
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 14537
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14540
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 14541
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14544
    :cond_28
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 14545
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14548
    :cond_39
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedSerializedSize:I

    move v1, v0

    .line 14549
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 14465
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    .line 14466
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 14467
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 14475
    :goto_9
    return-object v4

    .line 14469
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 14471
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14472
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 14473
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Feed;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 14475
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 14401
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    .line 14402
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 14403
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 14411
    :goto_9
    return-object v4

    .line 14405
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 14407
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 14408
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 14409
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Feed;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 14411
    goto :goto_9
.end method

.method public hasHtmlUrl()Z
    .registers 3

    .prologue
    .line 14430
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 14462
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 14398
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14497
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    .line 14498
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 14513
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 14498
    goto :goto_a

    .line 14500
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_17

    .line 14501
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    move v1, v2

    .line 14502
    goto :goto_a

    .line 14504
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->hasHtmlUrl()Z

    move-result v1

    if-nez v1, :cond_21

    .line 14505
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    move v1, v2

    .line 14506
    goto :goto_a

    .line 14508
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->hasStreamId()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 14509
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    move v1, v2

    .line 14510
    goto :goto_a

    .line 14512
    :cond_2b
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Feed;->memoizedIsInitialized:B

    move v1, v3

    .line 14513
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14627
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14375
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;
    .registers 2

    .prologue
    .line 14631
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->newBuilder(Lcom/google/feedreader/extrpc/Client$Feed;)Lcom/google/feedreader/extrpc/Client$Feed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14375
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->toBuilder()Lcom/google/feedreader/extrpc/Client$Feed$Builder;

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
    .line 14556
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14518
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getSerializedSize()I

    .line 14519
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 14520
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14522
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 14523
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getHtmlUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14525
    :cond_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Feed;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 14526
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Feed;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14528
    :cond_2e
    return-void
.end method
