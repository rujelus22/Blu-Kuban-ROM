.class public final Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExtendedGogglesConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedGogglesConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    }
.end annotation


# static fields
.field public static final ANNOTATION_FIELD_NUMBER:I = 0x9

.field public static final EXTENDED_GOGGLES_CONFIG_FIELD_NUMBER:I = 0xef8537

.field public static final WANT_ANNOTATION_RESULTS_FIELD_NUMBER:I = 0x1

.field public static final WANT_DISPLAY_RESULTS_FIELD_NUMBER:I = 0x5

.field public static final WANT_EYE_CANDY_RESULTS_FIELD_NUMBER:I = 0x7

.field public static final WANT_GENERAL_RESULTS_FIELD_NUMBER:I = 0x8

.field public static final WANT_HTML_RESULTS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

.field public static final extendedGogglesConfig:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;",
            "Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private annotation_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private wantAnnotationResults_:Z

.field private wantDisplayResults_:Z

.field private wantEyeCandyResults_:Z

.field private wantGeneralResults_:Z

.field private wantHtmlResults_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 610
    new-instance v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->defaultInstance:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    .line 611
    sget-object v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->defaultInstance:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->initFields()V

    .line 619
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xef8537

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->extendedGogglesConfig:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 148
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedIsInitialized:B

    .line 180
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;Lcom/google/goggles/ExtendedGogglesConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;-><init>(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 148
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedIsInitialized:B

    .line 180
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedSerializedSize:I

    .line 46
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    return p1
.end method

.method private getAnnotationBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    .line 130
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 131
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    .line 136
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->defaultInstance:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z

    .line 142
    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z

    .line 143
    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z

    .line 144
    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z

    .line 145
    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 1

    .prologue
    .line 288
    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->create()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$100()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2
    .parameter

    .prologue
    .line 291
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 259
    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    .line 261
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 270
    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    .line 272
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    .line 116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 125
    :goto_8
    return-object v0

    .line 119
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 121
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 123
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 125
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->defaultInstance:Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 182
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedSerializedSize:I

    .line 183
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 211
    :goto_9
    return v0

    .line 185
    :cond_a
    const/4 v0, 0x0

    .line 186
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 187
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_18
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_25

    .line 191
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_25
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    .line 195
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_34
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_42

    .line 199
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_42
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_51

    .line 203
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_51
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_64

    .line 207
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getAnnotationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_64
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedSerializedSize:I

    goto :goto_9
.end method

.method public getWantAnnotationResults()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z

    return v0
.end method

.method public getWantDisplayResults()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z

    return v0
.end method

.method public getWantEyeCandyResults()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z

    return v0
.end method

.method public getWantGeneralResults()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z

    return v0
.end method

.method public getWantHtmlResults()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z

    return v0
.end method

.method public hasAnnotation()Z
    .registers 3

    .prologue
    .line 112
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasWantAnnotationResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWantDisplayResults()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

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

.method public hasWantEyeCandyResults()Z
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

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

.method public hasWantGeneralResults()Z
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasWantHtmlResults()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

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

    .line 150
    iget-byte v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedIsInitialized:B

    .line 151
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 154
    :goto_8
    return v0

    .line 151
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 153
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 289
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilderForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 293
    invoke-static {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->newBuilder(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->toBuilder()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

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
    .line 218
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
    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getSerializedSize()I

    .line 160
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 161
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 163
    :cond_12
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 164
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 166
    :cond_1d
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 167
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 169
    :cond_2a
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_36

    .line 170
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 172
    :cond_36
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 173
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 175
    :cond_43
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_54

    .line 176
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getAnnotationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 178
    :cond_54
    return-void
.end method
