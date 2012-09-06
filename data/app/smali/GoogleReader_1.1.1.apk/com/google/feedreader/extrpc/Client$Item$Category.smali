.class public final Lcom/google/feedreader/extrpc/Client$Item$Category;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    }
.end annotation


# static fields
.field public static final STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final TERM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Category;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private streamId_:Ljava/lang/Object;

.field private term_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3532
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Category;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Category;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Item$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Category;

    .line 3533
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Category;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->initFields()V

    .line 3534
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3141
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3223
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedIsInitialized:B

    .line 3243
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedSerializedSize:I

    .line 3142
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3136
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3223
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedIsInitialized:B

    .line 3243
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedSerializedSize:I

    .line 3143
    return-void
.end method

.method static synthetic access$4102(Lcom/google/feedreader/extrpc/Client$Item$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/feedreader/extrpc/Client$Item$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/feedreader/extrpc/Client$Item$Category;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3136
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 1

    .prologue
    .line 3147
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Category;

    return-object v0
.end method

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3208
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    .line 3209
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3210
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3212
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 3215
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

.method private getTermBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3176
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    .line 3177
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3178
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3180
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    move-object v2, v0

    .line 3183
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
    .line 3220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    .line 3221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    .line 3222
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 1

    .prologue
    .line 3335
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3900()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3338
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3304
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    .line 3305
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3306
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    .line 3308
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3315
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    .line 3316
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3317
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    .line 3319
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3271
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3277
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3325
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3331
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3293
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3299
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3282
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3288
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Category;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->access$3800(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 2

    .prologue
    .line 3151
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Category;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Category;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3245
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedSerializedSize:I

    .line 3246
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3258
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3248
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3249
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 3250
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getTermBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3253
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 3254
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3257
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedSerializedSize:I

    move v1, v0

    .line 3258
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3194
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    .line 3195
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3196
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3204
    :goto_9
    return-object v4

    .line 3198
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3200
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3201
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3202
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3204
    goto :goto_9
.end method

.method public getTerm()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3162
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    .line 3163
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3164
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3172
    :goto_9
    return-object v4

    .line 3166
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3168
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3169
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3170
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->term_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 3172
    goto :goto_9
.end method

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 3191
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

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

.method public hasTerm()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3159
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3225
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedIsInitialized:B

    .line 3226
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    if-ne v0, v2, :cond_a

    move v1, v2

    .line 3229
    :goto_9
    return v1

    .line 3226
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 3228
    :cond_c
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->memoizedIsInitialized:B

    move v1, v2

    .line 3229
    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2

    .prologue
    .line 3336
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;
    .registers 2

    .prologue
    .line 3340
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

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
    .line 3265
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

    .line 3234
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getSerializedSize()I

    .line 3235
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 3236
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getTermBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3238
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 3239
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Category;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3241
    :cond_1f
    return-void
.end method
