.class public final Lcom/google/feedreader/extrpc/Client$Category;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Category$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Category;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 434
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Category;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Category;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Category;

    .line 435
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Category;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Category;->initFields()V

    .line 436
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Category$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 109
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    .line 137
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Category$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Category;-><init>(Lcom/google/feedreader/extrpc/Client$Category$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 109
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    .line 137
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/feedreader/extrpc/Client$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/feedreader/extrpc/Client$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/feedreader/extrpc/Client$Category;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Category;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    .line 63
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 64
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 66
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 69
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    .line 95
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 96
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 98
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 101
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 1

    .prologue
    .line 229
    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$100()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 232
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    .line 199
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Category$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 200
    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    .line 202
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    .line 210
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Category$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 211
    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    .line 213
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Category;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 48
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    .line 49
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 50
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 58
    :goto_9
    return-object v4

    .line 52
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 54
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 56
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 58
    goto :goto_9
.end method

.method public getLabel()Ljava/lang/String;
    .registers 6

    .prologue
    .line 80
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    .line 81
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 82
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 90
    :goto_9
    return-object v4

    .line 84
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 86
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 88
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 90
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 139
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedSerializedSize:I

    .line 140
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 152
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 142
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 143
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 144
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 148
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedSerializedSize:I

    move v1, v0

    .line 152
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 45
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    .line 112
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 123
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 112
    goto :goto_a

    .line 114
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 115
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    move v1, v2

    .line 116
    goto :goto_a

    .line 118
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->hasLabel()Z

    move-result v1

    if-nez v1, :cond_21

    .line 119
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    move v1, v2

    .line 120
    goto :goto_a

    .line 122
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Category;->memoizedIsInitialized:B

    move v1, v3

    .line 123
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2

    .prologue
    .line 230
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->toBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

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
    .line 159
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

    .line 128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getSerializedSize()I

    .line 129
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 130
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 132
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 133
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 135
    :cond_1f
    return-void
.end method
