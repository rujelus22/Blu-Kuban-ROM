.class public final Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientAnnotationProtos.java"

# interfaces
.implements Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ClientAnnotationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientAnnotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    }
.end annotation


# static fields
.field public static final BARCODE_FIELD_NUMBER:I = 0xa

.field public static final BOUNDING_BOX_FIELD_NUMBER:I = 0x1

.field public static final SCORE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

.field private static final serialVersionUID:J


# instance fields
.field private barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

.field private bitField0_:I

.field private boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private score_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 477
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    .line 478
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->initFields()V

    .line 479
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 80
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    .line 115
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;Lcom/google/goggles/ClientAnnotationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;-><init>(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 80
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    .line 115
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 76
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F

    .line 78
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 79
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 1

    .prologue
    .line 211
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$100()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 214
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 182
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    .line 184
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 193
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    .line 195
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 117
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedSerializedSize:I

    .line 118
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 134
    :goto_7
    return v0

    .line 120
    :cond_8
    const/4 v0, 0x0

    .line 121
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 122
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_16
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_23

    .line 126
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_23
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    .line 130
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_33
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasBarcode()Z
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

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

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasScore()Z
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    iget-byte v2, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    .line 83
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 98
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 83
    goto :goto_9

    .line 85
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->hasBoundingBox()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 86
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 87
    iput-byte v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    move v0, v1

    .line 88
    goto :goto_9

    .line 91
    :cond_20
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->hasBarcode()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 92
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_34

    .line 93
    iput-byte v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    move v0, v1

    .line 94
    goto :goto_9

    .line 97
    :cond_34
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 212
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilderForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->toBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

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
    .line 141
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

    .line 103
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getSerializedSize()I

    .line 104
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 105
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 107
    :cond_10
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 108
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 110
    :cond_1b
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    .line 111
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 113
    :cond_29
    return-void
.end method
