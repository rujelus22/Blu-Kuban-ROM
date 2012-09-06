.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Word"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    }
.end annotation


# static fields
.field public static final BOX_FIELD_NUMBER:I = 0x1

.field public static final CHARACTER_BOXES_FIELD_NUMBER:I = 0x3

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private characterBoxes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1668
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 1669
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->initFields()V

    .line 1670
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1123
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1205
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    .line 1240
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedSerializedSize:I

    .line 1124
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1118
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1125
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1205
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    .line 1240
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedSerializedSize:I

    .line 1125
    return-void
.end method

.method static synthetic access$1602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1118
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 1

    .prologue
    .line 1129
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    .line 1169
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1170
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1172
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    .line 1175
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1201
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    .line 1203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    .line 1204
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 1

    .prologue
    .line 1336
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1400()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1339
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1305
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    .line 1306
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1307
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    .line 1309
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1318
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    .line 1320
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1278
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1326
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1289
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getCharacterBoxes(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getCharacterBoxesCount()I
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCharacterBoxesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    return-object v0
.end method

.method public getCharacterBoxesOrBuilder(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;

    return-object v0
.end method

.method public getCharacterBoxesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2

    .prologue
    .line 1133
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1242
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedSerializedSize:I

    .line 1243
    const/4 v0, -0x1

    if-eq v2, v0, :cond_9

    .line 1259
    :goto_8
    return v2

    .line 1246
    :cond_9
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_43

    .line 1247
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1250
    :goto_16
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 1251
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    move v2, v0

    .line 1254
    :goto_26
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 1255
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1254
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_26

    .line 1258
    :cond_40
    iput v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedSerializedSize:I

    goto :goto_8

    :cond_43
    move v0, v1

    goto :goto_16
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    .line 1155
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1156
    check-cast v0, Ljava/lang/String;

    .line 1164
    :goto_8
    return-object v0

    .line 1158
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1160
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1162
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1164
    goto :goto_8
.end method

.method public hasBox()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1141
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 1151
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

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

    .line 1207
    iget-byte v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    .line 1208
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 1223
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 1208
    goto :goto_9

    .line 1210
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1211
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1212
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    move v0, v1

    .line 1213
    goto :goto_9

    :cond_20
    move v2, v1

    .line 1216
    :goto_21
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getCharacterBoxesCount()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1217
    invoke-virtual {p0, v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getCharacterBoxes(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1218
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    move v0, v1

    .line 1219
    goto :goto_9

    .line 1216
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1222
    :cond_38
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1337
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1341
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

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
    .line 1266
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

    .line 1228
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getSerializedSize()I

    .line 1229
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 1230
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1232
    :cond_10
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 1233
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1235
    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 1236
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 1238
    :cond_37
    return-void
.end method
