.class public final Lcom/google/feedreader/extrpc/Client$Item$Annotation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$AnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    }
.end annotation


# static fields
.field public static final AUTHOR_NAME_FIELD_NUMBER:I = 0x2

.field public static final BODY_FIELD_NUMBER:I = 0x1

.field public static final PROFILE_ID_FIELD_NUMBER:I = 0x4

.field public static final USER_ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Annotation;

.field private static final serialVersionUID:J


# instance fields
.field private authorName_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private profileId_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4776
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    .line 4777
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->initFields()V

    .line 4778
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4173
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4321
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    .line 4363
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedSerializedSize:I

    .line 4174
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4321
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    .line 4363
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedSerializedSize:I

    .line 4175
    return-void
.end method

.method static synthetic access$5502(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/feedreader/extrpc/Client$Item$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/feedreader/extrpc/Client$Item$Annotation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4168
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    return p1
.end method

.method private getAuthorNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4240
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    .line 4241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    move-object v2, v0

    .line 4247
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

.method private getBodyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4208
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    .line 4209
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4210
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4212
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    move-object v2, v0

    .line 4215
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 1

    .prologue
    .line 4179
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    return-object v0
.end method

.method private getProfileIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4304
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    .line 4305
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4306
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4308
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    move-object v2, v0

    .line 4311
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

.method private getUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4272
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    .line 4273
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4274
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4276
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    move-object v2, v0

    .line 4279
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
    .line 4316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    .line 4317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    .line 4318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    .line 4319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    .line 4320
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 1

    .prologue
    .line 4463
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5300()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4466
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4432
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    .line 4433
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4434
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    .line 4436
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4443
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    .line 4444
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4445
    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    .line 4447
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4399
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4405
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4453
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4459
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4421
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4427
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4410
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4416
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->access$5200(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4226
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    .line 4227
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4228
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4236
    :goto_9
    return-object v4

    .line 4230
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4232
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4233
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4234
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->authorName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4236
    goto :goto_9
.end method

.method public getBody()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4194
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    .line 4195
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4196
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4204
    :goto_9
    return-object v4

    .line 4198
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4200
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4201
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4202
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->body_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4204
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 2

    .prologue
    .line 4183
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4168
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4290
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    .line 4291
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4292
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4300
    :goto_9
    return-object v4

    .line 4294
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4296
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4297
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4298
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->profileId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4300
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4365
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedSerializedSize:I

    .line 4366
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 4386
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 4368
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 4369
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 4370
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4373
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4374
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getAuthorNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4377
    :cond_29
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 4378
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4381
    :cond_39
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 4382
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4385
    :cond_4a
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedSerializedSize:I

    move v1, v0

    .line 4386
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUserId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4258
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    .line 4259
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4260
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4268
    :goto_9
    return-object v4

    .line 4262
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4264
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4265
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4266
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->userId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4268
    goto :goto_9
.end method

.method public hasAuthorName()Z
    .registers 3

    .prologue
    .line 4223
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

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

.method public hasBody()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 4191
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasProfileId()Z
    .registers 3

    .prologue
    .line 4287
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    .line 4255
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4323
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    .line 4324
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 4343
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 4324
    goto :goto_a

    .line 4326
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasBody()Z

    move-result v1

    if-nez v1, :cond_17

    .line 4327
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    move v1, v2

    .line 4328
    goto :goto_a

    .line 4330
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasAuthorName()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4331
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    move v1, v2

    .line 4332
    goto :goto_a

    .line 4334
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 4335
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    move v1, v2

    .line 4336
    goto :goto_a

    .line 4338
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->hasProfileId()Z

    move-result v1

    if-nez v1, :cond_35

    .line 4339
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    move v1, v2

    .line 4340
    goto :goto_a

    .line 4342
    :cond_35
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->memoizedIsInitialized:B

    move v1, v3

    .line 4343
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4464
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4168
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;
    .registers 2

    .prologue
    .line 4468
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4168
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->toBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

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
    .line 4393
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

    .line 4348
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getSerializedSize()I

    .line 4349
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 4350
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4352
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4353
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getAuthorNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4355
    :cond_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 4356
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4358
    :cond_2e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 4359
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->getProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4361
    :cond_3d
    return-void
.end method
