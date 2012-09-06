.class public final Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientAnnotationProtos.java"

# interfaces
.implements Lcom/google/goggles/ClientAnnotationProtos$ClientBarcodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ClientAnnotationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientBarcode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;,
        Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;,
        Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    }
.end annotation


# static fields
.field public static final FORMAT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1063
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 1064
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->initFields()V

    .line 1065
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 504
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 705
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedIsInitialized:B

    .line 732
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedSerializedSize:I

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;Lcom/google/goggles/ClientAnnotationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;-><init>(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 705
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedIsInitialized:B

    .line 732
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedSerializedSize:I

    .line 506
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 499
    iput p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 1

    .prologue
    .line 510
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    .line 690
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 691
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 693
    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    .line 696
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 701
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 702
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    .line 704
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 1

    .prologue
    .line 828
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$800()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2
    .parameter

    .prologue
    .line 831
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    .line 798
    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 799
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    .line 801
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 810
    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    .line 812
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    #calls: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2

    .prologue
    .line 514
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->defaultInstance:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 734
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedSerializedSize:I

    .line 735
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 751
    :goto_7
    return v0

    .line 737
    :cond_8
    const/4 v0, 0x0

    .line 738
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1a

    .line 739
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    invoke-virtual {v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_1a
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2b

    .line 743
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    invoke-virtual {v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_2b
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    .line 747
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_3c
    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    .line 676
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 677
    check-cast v0, Ljava/lang/String;

    .line 685
    :goto_8
    return-object v0

    .line 679
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 681
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 683
    iput-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 685
    goto :goto_8
.end method

.method public hasFormat()Z
    .registers 3

    .prologue
    .line 662
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 652
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 672
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 707
    iget-byte v2, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedIsInitialized:B

    .line 708
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 715
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 708
    goto :goto_9

    .line 710
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->hasValue()Z

    move-result v2

    if-nez v2, :cond_16

    .line 711
    iput-byte v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedIsInitialized:B

    move v0, v1

    .line 712
    goto :goto_9

    .line 714
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 829
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilderForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 833
    invoke-static {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->toBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

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
    .line 758
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

    .line 720
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getSerializedSize()I

    .line 721
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 722
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 724
    :cond_14
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_23

    .line 725
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 727
    :cond_23
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 728
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 730
    :cond_32
    return-void
.end method
