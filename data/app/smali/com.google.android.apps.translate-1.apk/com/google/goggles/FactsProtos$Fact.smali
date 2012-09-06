.class public final Lcom/google/goggles/FactsProtos$Fact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/goggles/FactsProtos$FactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/FactsProtos$Fact$Builder;,
        Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x1

.field public static final CONFIDENCE_LEVEL_FIELD_NUMBER:I = 0x3

.field public static final URLS_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/FactsProtos$Fact;

.field private static final serialVersionUID:J


# instance fields
.field private attribute_:Ljava/lang/Object;

.field private bitField0_:I

.field private confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private urls_:Lcom/google/protobuf/LazyStringList;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 637
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/FactsProtos$Fact;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact;->defaultInstance:Lcom/google/goggles/FactsProtos$Fact;

    .line 638
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact;->defaultInstance:Lcom/google/goggles/FactsProtos$Fact;

    invoke-direct {v0}, Lcom/google/goggles/FactsProtos$Fact;->initFields()V

    .line 639
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/FactsProtos$Fact$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 188
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedIsInitialized:B

    .line 214
    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/FactsProtos$Fact$Builder;Lcom/google/goggles/FactsProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/goggles/FactsProtos$Fact;-><init>(Lcom/google/goggles/FactsProtos$Fact$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 188
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedIsInitialized:B

    .line 214
    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/FactsProtos$Fact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/FactsProtos$Fact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/FactsProtos$Fact;Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;)Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/goggles/FactsProtos$Fact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/FactsProtos$Fact;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    return p1
.end method

.method private getAttributeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    .line 116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 117
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    .line 122
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/FactsProtos$Fact;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact;->defaultInstance:Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    .line 148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 149
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    .line 154
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 186
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    .line 187
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 1

    .prologue
    .line 319
    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->create()Lcom/google/goggles/FactsProtos$Fact$Builder;
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$100()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2
    .parameter

    .prologue
    .line 322
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    .line 292
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 301
    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    .line 303
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/FactsProtos$Fact;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Fact$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Fact$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Fact;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Fact$Builder;->access$000(Lcom/google/goggles/FactsProtos$Fact$Builder;)Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    .line 102
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 103
    check-cast v0, Ljava/lang/String;

    .line 111
    :goto_8
    return-object v0

    .line 105
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 107
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 109
    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Fact;->attribute_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 111
    goto :goto_8
.end method

.method public getConfidenceLevel()Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Fact;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact;->defaultInstance:Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Fact;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 216
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedSerializedSize:I

    .line 217
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 242
    :goto_8
    return v0

    .line 220
    :cond_9
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_60

    .line 221
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact;->getAttributeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    .line 224
    :goto_18
    iget v2, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 225
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 228
    :cond_27
    iget v2, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    .line 229
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    invoke-virtual {v3}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3a
    move v2, v1

    .line 234
    :goto_3b
    iget-object v3, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_51

    .line 235
    iget-object v3, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 238
    :cond_51
    add-int/2addr v0, v2

    .line 239
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact;->getUrlsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 241
    iput v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedSerializedSize:I

    goto :goto_8

    :cond_60
    move v0, v1

    goto :goto_18
.end method

.method public getUrls(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlsCount()I
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUrlsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    .line 134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 135
    check-cast v0, Ljava/lang/String;

    .line 143
    :goto_8
    return-object v0

    .line 137
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 139
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 141
    iput-object v1, p0, Lcom/google/goggles/FactsProtos$Fact;->value_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 143
    goto :goto_8
.end method

.method public hasAttribute()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConfidenceLevel()Z
    .registers 3

    .prologue
    .line 162
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 130
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-byte v1, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedIsInitialized:B

    .line 191
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 194
    :goto_8
    return v0

    .line 191
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 193
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Fact;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact;->newBuilderForType()Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;
    .registers 2

    .prologue
    .line 324
    invoke-static {p0}, Lcom/google/goggles/FactsProtos$Fact;->newBuilder(Lcom/google/goggles/FactsProtos$Fact;)Lcom/google/goggles/FactsProtos$Fact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact;->toBuilder()Lcom/google/goggles/FactsProtos$Fact$Builder;

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
    .line 249
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

    .line 199
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Fact;->getSerializedSize()I

    .line 200
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 201
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact;->getAttributeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 203
    :cond_13
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 204
    invoke-direct {p0}, Lcom/google/goggles/FactsProtos$Fact;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 206
    :cond_20
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 207
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact;->confidenceLevel_:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    invoke-virtual {v1}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 209
    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 210
    iget-object v1, p0, Lcom/google/goggles/FactsProtos$Fact;->urls_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 212
    :cond_45
    return-void
.end method
