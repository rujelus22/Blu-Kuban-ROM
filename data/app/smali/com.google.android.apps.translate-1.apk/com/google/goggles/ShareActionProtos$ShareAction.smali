.class public final Lcom/google/goggles/ShareActionProtos$ShareAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ShareActionProtos.java"

# interfaces
.implements Lcom/google/goggles/ShareActionProtos$ShareActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ShareActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    }
.end annotation


# static fields
.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/ShareActionProtos$ShareAction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 324
    new-instance v0, Lcom/google/goggles/ShareActionProtos$ShareAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ShareActionProtos$ShareAction;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ShareActionProtos$ShareAction;->defaultInstance:Lcom/google/goggles/ShareActionProtos$ShareAction;

    .line 325
    sget-object v0, Lcom/google/goggles/ShareActionProtos$ShareAction;->defaultInstance:Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-direct {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->initFields()V

    .line 326
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 72
    iput-byte v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedIsInitialized:B

    .line 89
    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;Lcom/google/goggles/ShareActionProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction;-><init>(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 72
    iput-byte v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedIsInitialized:B

    .line 89
    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ShareActionProtos$ShareAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ShareActionProtos$ShareAction;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/goggles/ShareActionProtos$ShareAction;->defaultInstance:Lcom/google/goggles/ShareActionProtos$ShareAction;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    .line 59
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 60
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    .line 65
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 1

    .prologue
    .line 177
    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->create()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$100()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 2
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 148
    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    .line 150
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 159
    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    .line 161
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    #calls: Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/ShareActionProtos$ShareAction;->defaultInstance:Lcom/google/goggles/ShareActionProtos$ShareAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstanceForType()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 91
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedSerializedSize:I

    .line 92
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 100
    :goto_6
    return v0

    .line 94
    :cond_7
    const/4 v0, 0x0

    .line 95
    iget v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 96
    invoke-direct {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_17
    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    .line 45
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 54
    :goto_8
    return-object v0

    .line 48
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 50
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    iput-object v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 54
    goto :goto_8
.end method

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->bitField0_:I

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

    .line 74
    iget-byte v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedIsInitialized:B

    .line 75
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 78
    :goto_8
    return v0

    .line 75
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 77
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilderForType()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 2

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->newBuilder(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->toBuilder()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

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
    .line 107
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getSerializedSize()I

    .line 84
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 85
    invoke-direct {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 87
    :cond_11
    return-void
.end method
