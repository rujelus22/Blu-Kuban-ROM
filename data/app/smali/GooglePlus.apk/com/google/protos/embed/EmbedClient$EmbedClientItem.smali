.class public final Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "EmbedClient.java"

# interfaces
.implements Lcom/google/protos/embed/EmbedClient$EmbedClientItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/EmbedClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbedClientItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
        ">;",
        "Lcom/google/protos/embed/EmbedClient$EmbedClientItemOrBuilder;"
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private canonicalId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embed/ItemTypes$ItemType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 552
    new-instance v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->defaultInstance:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 553
    sget-object v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->defaultInstance:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-direct {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->initFields()V

    .line 554
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 129
    iput-byte v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedIsInitialized:B

    .line 160
    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedSerializedSize:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;Lcom/google/protos/embed/EmbedClient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;-><init>(Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 129
    iput-byte v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedIsInitialized:B

    .line 160
    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedSerializedSize:I

    .line 35
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    return p1
.end method

.method private getCanonicalIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    .line 114
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 115
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 117
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    .line 120
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->defaultInstance:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    .line 82
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 83
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 85
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    .line 88
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 1

    .prologue
    .line 262
    #calls: Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->create()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->access$100()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 265
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCanonicalId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    .line 100
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 101
    check-cast v1, Ljava/lang/String;

    .line 109
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 103
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 105
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 107
    iput-object v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 109
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstanceForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->defaultInstance:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    .line 68
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 77
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 71
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 73
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 75
    iput-object v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 77
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 162
    iget v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedSerializedSize:I

    .line 163
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 185
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 165
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_27

    .line 169
    iget-object v4, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/embed/ItemTypes$ItemType;

    invoke-virtual {v4}, Lcom/google/protos/embed/ItemTypes$ItemType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 172
    :cond_27
    add-int/2addr v2, v0

    .line 173
    iget-object v4, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 175
    iget v4, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    .line 176
    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 179
    :cond_41
    iget v4, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_51

    .line 180
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getCanonicalIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 183
    :cond_51
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 184
    iput v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedSerializedSize:I

    move v3, v2

    .line 185
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasCanonicalId()Z
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 64
    iget v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    iget-byte v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedIsInitialized:B

    .line 132
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 139
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 132
    goto :goto_9

    .line 134
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    .line 135
    iput-byte v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedIsInitialized:B

    move v1, v2

    .line 136
    goto :goto_9

    .line 138
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilderForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 2

    .prologue
    .line 263
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->toBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 2

    .prologue
    .line 267
    invoke-static {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

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
    .line 192
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getSerializedSize()I

    .line 146
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 148
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/embed/EmbedClient$EmbedClientItem;>.ExtensionWriter;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 149
    iget-object v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protos/embed/ItemTypes$ItemType;

    invoke-virtual {v2}, Lcom/google/protos/embed/ItemTypes$ItemType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 151
    :cond_24
    iget v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_31

    .line 152
    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 154
    :cond_31
    iget v2, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_3f

    .line 155
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getCanonicalIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 157
    :cond_3f
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 158
    return-void
.end method
