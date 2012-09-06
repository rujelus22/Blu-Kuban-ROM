.class public final Lcom/google/goggles/HtmlResultProtos$HtmlResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HtmlResultProtos.java"

# interfaces
.implements Lcom/google/goggles/HtmlResultProtos$HtmlResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HtmlResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtmlResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    }
.end annotation


# static fields
.field public static final HTML_DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final HTML_RESULT_FIELD_NUMBER:I = 0xef7754

.field public static final URL_FIELD_NUMBER:I = 0x2

.field public static final VALID_MS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/HtmlResultProtos$HtmlResult;

.field public static final htmlResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            "Lcom/google/goggles/HtmlResultProtos$HtmlResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private htmlDocument_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;

.field private validMs_:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 476
    new-instance v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->defaultInstance:Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    .line 477
    sget-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->defaultInstance:Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    invoke-direct {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->initFields()V

    .line 485
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xef7754

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 125
    iput-byte v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedIsInitialized:B

    .line 148
    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;Lcom/google/goggles/HtmlResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;-><init>(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 125
    iput-byte v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedIsInitialized:B

    .line 148
    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedSerializedSize:I

    .line 34
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/HtmlResultProtos$HtmlResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/HtmlResultProtos$HtmlResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/HtmlResultProtos$HtmlResult;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/HtmlResultProtos$HtmlResult;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->defaultInstance:Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    return-object v0
.end method

.method private getHtmlDocumentBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    .line 68
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 69
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    .line 74
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    .line 100
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 101
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    .line 106
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    .line 123
    const v0, 0x36ee80

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I

    .line 124
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 1

    .prologue
    .line 244
    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->create()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$100()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2
    .parameter

    .prologue
    .line 247
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 215
    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    .line 217
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 226
    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    .line 228
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    #calls: Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->defaultInstance:Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstanceForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlDocument()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    .line 54
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 63
    :goto_8
    return-object v0

    .line 57
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 59
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    iput-object v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 63
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 150
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedSerializedSize:I

    .line 151
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 167
    :goto_7
    return v0

    .line 153
    :cond_8
    const/4 v0, 0x0

    .line 154
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 155
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getHtmlDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_18
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 159
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_27
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    .line 163
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_36
    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    .line 86
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 95
    :goto_8
    return-object v0

    .line 89
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 91
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 93
    iput-object v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 95
    goto :goto_8
.end method

.method public getValidMs()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I

    return v0
.end method

.method public hasHtmlDocument()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 50
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

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

.method public hasValidMs()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 127
    iget-byte v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedIsInitialized:B

    .line 128
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 131
    :goto_8
    return v0

    .line 128
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 130
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2

    .prologue
    .line 245
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilderForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2

    .prologue
    .line 249
    invoke-static {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->newBuilder(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->toBuilder()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

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
    .line 174
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

    .line 136
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getSerializedSize()I

    .line 137
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 138
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getHtmlDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 140
    :cond_12
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 141
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 143
    :cond_1f
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 144
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 146
    :cond_2c
    return-void
.end method
