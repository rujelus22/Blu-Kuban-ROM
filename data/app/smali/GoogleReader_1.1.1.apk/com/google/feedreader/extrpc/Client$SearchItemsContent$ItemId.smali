.class public final Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SearchItemsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23442
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    .line 23443
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->initFields()V

    .line 23444
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23170
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23197
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedIsInitialized:B

    .line 23218
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedSerializedSize:I

    .line 23171
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23165
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;-><init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23172
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23197
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedIsInitialized:B

    .line 23218
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedSerializedSize:I

    .line 23172
    return-void
.end method

.method static synthetic access$29002(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23165
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J

    return-wide p1
.end method

.method static synthetic access$29102(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23165
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 1

    .prologue
    .line 23176
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 23195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J

    .line 23196
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 1

    .prologue
    .line 23306
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28800()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23309
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23275
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    .line 23276
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23277
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    .line 23279
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23286
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    .line 23287
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23288
    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    .line 23290
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23242
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23248
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23296
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23302
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23264
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23270
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23253
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23259
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2

    .prologue
    .line 23180
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23165
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 23191
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 23220
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedSerializedSize:I

    .line 23221
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 23229
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 23223
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 23224
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 23225
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23228
    :cond_16
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedSerializedSize:I

    move v1, v0

    .line 23229
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 23188
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23199
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedIsInitialized:B

    .line 23200
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 23207
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 23200
    goto :goto_a

    .line 23202
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 23203
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedIsInitialized:B

    move v1, v3

    .line 23204
    goto :goto_a

    .line 23206
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->memoizedIsInitialized:B

    move v1, v2

    .line 23207
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 2

    .prologue
    .line 23307
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23165
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 2

    .prologue
    .line 23311
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->newBuilder(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23165
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->toBuilder()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

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
    .line 23236
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
    const/4 v2, 0x1

    .line 23212
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->getSerializedSize()I

    .line 23213
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 23214
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 23216
    :cond_f
    return-void
.end method
