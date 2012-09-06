.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$ImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    }
.end annotation


# static fields
.field public static final ALTTEXT_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_FIELD_NUMBER:I = 0x1

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

.field private static final serialVersionUID:J


# instance fields
.field private altText_:Ljava/lang/Object;

.field private bitField0_:I

.field private height_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private source_:Ljava/lang/Object;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28767
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 28768
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->initFields()V

    .line 28769
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28262
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28366
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedIsInitialized:B

    .line 28396
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedSerializedSize:I

    .line 28263
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28264
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28366
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedIsInitialized:B

    .line 28396
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedSerializedSize:I

    .line 28264
    return-void
.end method

.method static synthetic access$35702(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35802(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35902(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I

    return p1
.end method

.method static synthetic access$36002(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I

    return p1
.end method

.method static synthetic access$36102(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28257
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    return p1
.end method

.method private getAltTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28329
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    .line 28330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 28331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    move-object v2, v0

    .line 28336
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 1

    .prologue
    .line 28268
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    return-object v0
.end method

.method private getSourceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28297
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    .line 28298
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 28299
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28301
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    move-object v2, v0

    .line 28304
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

    .line 28361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    .line 28362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    .line 28363
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I

    .line 28364
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I

    .line 28365
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 1

    .prologue
    .line 28496
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35500()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28499
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28465
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    .line 28466
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28467
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    .line 28469
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28476
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    .line 28477
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28478
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    .line 28480
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28432
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28438
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28486
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28492
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28454
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28460
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28443
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28449
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->access$35400(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAltText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 28315
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    .line 28316
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 28317
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 28325
    :goto_9
    return-object v4

    .line 28319
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 28321
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 28322
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 28323
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->altText_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 28325
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2

    .prologue
    .line 28272
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28257
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 28357
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28398
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedSerializedSize:I

    .line 28399
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 28419
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 28401
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 28402
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 28403
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28406
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 28407
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getAltTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28410
    :cond_29
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 28411
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28414
    :cond_37
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 28415
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28418
    :cond_46
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedSerializedSize:I

    move v1, v0

    .line 28419
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSource()Ljava/lang/String;
    .registers 6

    .prologue
    .line 28283
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    .line 28284
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 28285
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 28293
    :goto_9
    return-object v4

    .line 28287
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 28289
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 28290
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 28291
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->source_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 28293
    goto :goto_9
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 28347
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I

    return v0
.end method

.method public hasAltText()Z
    .registers 3

    .prologue
    .line 28312
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 28354
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

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

.method public hasSource()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 28280
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 28344
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

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

    .line 28368
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedIsInitialized:B

    .line 28369
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 28376
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 28369
    goto :goto_a

    .line 28371
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->hasSource()Z

    move-result v1

    if-nez v1, :cond_17

    .line 28372
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedIsInitialized:B

    move v1, v3

    .line 28373
    goto :goto_a

    .line 28375
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->memoizedIsInitialized:B

    move v1, v2

    .line 28376
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28497
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28257
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;
    .registers 2

    .prologue
    .line 28501
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28257
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

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
    .line 28426
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

    .line 28381
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSerializedSize()I

    .line 28382
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 28383
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28385
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 28386
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getAltTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28388
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 28389
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28391
    :cond_2c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 28392
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->height_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28394
    :cond_39
    return-void
.end method
