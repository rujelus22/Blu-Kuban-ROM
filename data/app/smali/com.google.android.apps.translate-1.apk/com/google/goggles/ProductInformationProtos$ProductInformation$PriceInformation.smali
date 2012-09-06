.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;,
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    }
.end annotation


# static fields
.field public static final CONDITION_FIELD_NUMBER:I = 0x4

.field public static final HIGH_PRICE_FIELD_NUMBER:I = 0x3

.field public static final LOW_PRICE_FIELD_NUMBER:I = 0x2

.field public static final PRICE_SUMMARY_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

.field private highPrice_:D

.field private lowPrice_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private priceSummary_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 635
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 636
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->initFields()V

    .line 637
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 118
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 250
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedIsInitialized:B

    .line 276
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedSerializedSize:I

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 250
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedIsInitialized:B

    .line 276
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedSerializedSize:I

    .line 120
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method private getPriceSummaryBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    .line 204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 205
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    .line 210
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    .line 246
    iput-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D

    .line 247
    iput-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D

    .line 248
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 249
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 1

    .prologue
    .line 376
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$100()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 379
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 347
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    .line 349
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 358
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    .line 360
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->access$000(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCondition()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getHighPrice()D
    .registers 3

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D

    return-wide v0
.end method

.method public getLowPrice()D
    .registers 3

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D

    return-wide v0
.end method

.method public getPriceSummary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    .line 190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 191
    check-cast v0, Ljava/lang/String;

    .line 199
    :goto_8
    return-object v0

    .line 193
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 195
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 197
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->priceSummary_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 199
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 278
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedSerializedSize:I

    .line 279
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 299
    :goto_8
    return v0

    .line 281
    :cond_9
    const/4 v0, 0x0

    .line 282
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 283
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_19
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 287
    iget-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_26
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 291
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_34
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_47

    .line 295
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    invoke-virtual {v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_47
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasCondition()Z
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

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

.method public hasHighPrice()Z
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

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

.method public hasLowPrice()Z
    .registers 3

    .prologue
    .line 218
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

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

.method public hasPriceSummary()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 186
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-byte v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedIsInitialized:B

    .line 253
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 256
    :goto_8
    return v0

    .line 253
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 255
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 2

    .prologue
    .line 377
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;
    .registers 2

    .prologue
    .line 381
    invoke-static {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

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
    .line 306
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

    .line 261
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getSerializedSize()I

    .line 262
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 263
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getPriceSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 265
    :cond_13
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 266
    iget-wide v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->lowPrice_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 268
    :cond_1e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 269
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->highPrice_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 271
    :cond_2a
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 272
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->condition_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 274
    :cond_3b
    return-void
.end method
