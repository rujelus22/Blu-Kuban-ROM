.class public final Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BoundingBoxProtos.java"

# interfaces
.implements Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BoundingBoxProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final WIDTH_FIELD_NUMBER:I = 0x2

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private width_:I

.field private x_:I

.field private y_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 490
    new-instance v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->defaultInstance:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 491
    sget-object v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->defaultInstance:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-direct {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->initFields()V

    .line 492
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 95
    iput-byte v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    .line 137
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;Lcom/google/goggles/BoundingBoxProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;-><init>(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 95
    iput-byte v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    .line 137
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->defaultInstance:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I

    .line 91
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I

    .line 92
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I

    .line 93
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I

    .line 94
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 237
    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->create()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$100()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2
    .parameter

    .prologue
    .line 240
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 208
    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 210
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 219
    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 221
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    #calls: Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->defaultInstance:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstanceForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 139
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedSerializedSize:I

    .line 140
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 160
    :goto_8
    return v0

    .line 142
    :cond_9
    const/4 v0, 0x0

    .line 143
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 144
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_17
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 148
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_24
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 152
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_32
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_41

    .line 156
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_41
    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

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

.method public hasX()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasY()Z
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    iget-byte v2, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    .line 98
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 117
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 98
    goto :goto_9

    .line 100
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasX()Z

    move-result v2

    if-nez v2, :cond_16

    .line 101
    iput-byte v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    goto :goto_a

    .line 104
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasWidth()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 105
    iput-byte v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    goto :goto_a

    .line 108
    :cond_1f
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasY()Z

    move-result v2

    if-nez v2, :cond_28

    .line 109
    iput-byte v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    goto :goto_a

    .line 112
    :cond_28
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasHeight()Z

    move-result v2

    if-nez v2, :cond_31

    .line 113
    iput-byte v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    goto :goto_a

    .line 116
    :cond_31
    iput-byte v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->memoizedIsInitialized:B

    move v1, v0

    .line 117
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilderForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 242
    invoke-static {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->toBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

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
    .line 167
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

    .line 122
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getSerializedSize()I

    .line 123
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 124
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 126
    :cond_11
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 127
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 129
    :cond_1c
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 130
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 132
    :cond_28
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 133
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 135
    :cond_35
    return-void
.end method
