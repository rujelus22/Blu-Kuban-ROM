.class public final Lcom/google/goggles/DisplayResultProtos$DisplayResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DisplayResultProtos.java"

# interfaces
.implements Lcom/google/goggles/DisplayResultProtos$DisplayResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/DisplayResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    }
.end annotation


# static fields
.field public static final DISPLAY_RESULT_FIELD_NUMBER:I = 0xf4d488

.field public static final SUBTITLE_FIELD_NUMBER:I = 0x2

.field public static final SUBTYPE_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/DisplayResultProtos$DisplayResult;

.field public static final displayResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            "Lcom/google/goggles/DisplayResultProtos$DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private subtitle_:Ljava/lang/Object;

.field private subtype_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 607
    new-instance v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->defaultInstance:Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    .line 608
    sget-object v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->defaultInstance:Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    invoke-direct {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->initFields()V

    .line 616
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xf4d488

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->displayResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 184
    iput-byte v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedIsInitialized:B

    .line 210
    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;Lcom/google/goggles/DisplayResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;-><init>(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 184
    iput-byte v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedIsInitialized:B

    .line 210
    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/DisplayResultProtos$DisplayResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/DisplayResultProtos$DisplayResult;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->defaultInstance:Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    return-object v0
.end method

.method private getSubtitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    .line 104
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 105
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    .line 110
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSubtypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    .line 168
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 169
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    .line 174
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    .line 72
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 73
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    .line 78
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    .line 136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 137
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    .line 142
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 1

    .prologue
    .line 310
    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->create()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$100()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2
    .parameter

    .prologue
    .line 313
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 281
    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    .line 283
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 292
    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    .line 294
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    #calls: Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->buildParsed()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    invoke-static {v0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;->access$000(Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;)Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->defaultInstance:Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getDefaultInstanceForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 212
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedSerializedSize:I

    .line 213
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 233
    :goto_8
    return v0

    .line 215
    :cond_9
    const/4 v0, 0x0

    .line 216
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 217
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_19
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 221
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_28
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_38

    .line 225
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_38
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 229
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_49
    iput v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    .line 90
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_8
    return-object v0

    .line 93
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    iput-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtitle_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 99
    goto :goto_8
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_8
    return-object v0

    .line 157
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 159
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 161
    iput-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->subtype_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 163
    goto :goto_8
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    .line 58
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 67
    :goto_8
    return-object v0

    .line 61
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 63
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 65
    iput-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->title_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 67
    goto :goto_8
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    .line 122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 131
    :goto_8
    return-object v0

    .line 125
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 127
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    iput-object v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->type_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 131
    goto :goto_8
.end method

.method public hasSubtitle()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

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

.method public hasSubtype()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

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

    .line 186
    iget-byte v1, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedIsInitialized:B

    .line 187
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 190
    :goto_8
    return v0

    .line 187
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 189
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2

    .prologue
    .line 311
    invoke-static {}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilderForType()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-static {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->newBuilder(Lcom/google/goggles/DisplayResultProtos$DisplayResult;)Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->toBuilder()Lcom/google/goggles/DisplayResultProtos$DisplayResult$Builder;

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
    .line 240
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

    .line 195
    invoke-virtual {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSerializedSize()I

    .line 196
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 197
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 199
    :cond_13
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 200
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 202
    :cond_20
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 203
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 205
    :cond_2e
    iget v0, p0, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 206
    invoke-direct {p0}, Lcom/google/goggles/DisplayResultProtos$DisplayResult;->getSubtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 208
    :cond_3d
    return-void
.end method
