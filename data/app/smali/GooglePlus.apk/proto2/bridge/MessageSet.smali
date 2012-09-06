.class public final Lproto2/bridge/MessageSet;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "MessageSet.java"

# interfaces
.implements Lproto2/bridge/MessageSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproto2/bridge/MessageSet$1;,
        Lproto2/bridge/MessageSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lproto2/bridge/MessageSet;",
        ">;",
        "Lproto2/bridge/MessageSetOrBuilder;"
    }
.end annotation


# static fields
.field private static final defaultInstance:Lproto2/bridge/MessageSet;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 229
    new-instance v0, Lproto2/bridge/MessageSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lproto2/bridge/MessageSet;-><init>(Z)V

    sput-object v0, Lproto2/bridge/MessageSet;->defaultInstance:Lproto2/bridge/MessageSet;

    .line 230
    sget-object v0, Lproto2/bridge/MessageSet;->defaultInstance:Lproto2/bridge/MessageSet;

    invoke-direct {v0}, Lproto2/bridge/MessageSet;->initFields()V

    .line 231
    return-void
.end method

.method private constructor <init>(Lproto2/bridge/MessageSet$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 25
    iput-byte v0, p0, Lproto2/bridge/MessageSet;->memoizedIsInitialized:B

    .line 47
    iput v0, p0, Lproto2/bridge/MessageSet;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lproto2/bridge/MessageSet$Builder;Lproto2/bridge/MessageSet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lproto2/bridge/MessageSet;-><init>(Lproto2/bridge/MessageSet$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 25
    iput-byte v0, p0, Lproto2/bridge/MessageSet;->memoizedIsInitialized:B

    .line 47
    iput v0, p0, Lproto2/bridge/MessageSet;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method public static getDefaultInstance()Lproto2/bridge/MessageSet;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lproto2/bridge/MessageSet;->defaultInstance:Lproto2/bridge/MessageSet;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public static newBuilder()Lproto2/bridge/MessageSet$Builder;
    .registers 1

    .prologue
    .line 132
    #calls: Lproto2/bridge/MessageSet$Builder;->create()Lproto2/bridge/MessageSet$Builder;
    invoke-static {}, Lproto2/bridge/MessageSet$Builder;->access$100()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 135
    invoke-static {}, Lproto2/bridge/MessageSet;->newBuilder()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lproto2/bridge/MessageSet$Builder;->mergeFrom(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->getDefaultInstanceForType()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lproto2/bridge/MessageSet;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lproto2/bridge/MessageSet;->defaultInstance:Lproto2/bridge/MessageSet;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 49
    iget v0, p0, Lproto2/bridge/MessageSet;->memoizedSerializedSize:I

    .line 50
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 55
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 52
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->extensionsSerializedSizeAsMessageSet()I

    move-result v2

    add-int/2addr v0, v2

    .line 54
    iput v0, p0, Lproto2/bridge/MessageSet;->memoizedSerializedSize:I

    move v1, v0

    .line 55
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    iget-byte v0, p0, Lproto2/bridge/MessageSet;->memoizedIsInitialized:B

    .line 28
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 35
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 28
    goto :goto_9

    .line 30
    :cond_c
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    .line 31
    iput-byte v2, p0, Lproto2/bridge/MessageSet;->memoizedIsInitialized:B

    move v1, v2

    .line 32
    goto :goto_9

    .line 34
    :cond_16
    iput-byte v1, p0, Lproto2/bridge/MessageSet;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->newBuilderForType()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lproto2/bridge/MessageSet$Builder;
    .registers 2

    .prologue
    .line 133
    invoke-static {}, Lproto2/bridge/MessageSet;->newBuilder()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->toBuilder()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lproto2/bridge/MessageSet$Builder;
    .registers 2

    .prologue
    .line 137
    invoke-static {p0}, Lproto2/bridge/MessageSet;->newBuilder(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;

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
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->getSerializedSize()I

    .line 42
    invoke-virtual {p0}, Lproto2/bridge/MessageSet;->newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 44
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lproto2/bridge/MessageSet;>.ExtensionWriter;"
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 45
    return-void
.end method
