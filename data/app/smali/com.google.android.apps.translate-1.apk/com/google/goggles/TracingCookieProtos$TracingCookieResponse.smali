.class public final Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingCookieProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingCookieProtos$TracingCookieResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingCookieProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TracingCookieResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    }
.end annotation


# static fields
.field public static final TRACING_COOKIES_FIELD_NUMBER:I = 0x1

.field public static final VALID_MS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tracingCookies_:Lcom/google/protobuf/LazyStringList;

.field private validMs_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 681
    new-instance v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->defaultInstance:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    .line 682
    sget-object v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->defaultInstance:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-direct {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->initFields()V

    .line 683
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 311
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 353
    iput-byte v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedIsInitialized:B

    .line 373
    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedSerializedSize:I

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;Lcom/google/goggles/TracingCookieProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;-><init>(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 313
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 353
    iput-byte v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedIsInitialized:B

    .line 373
    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedSerializedSize:I

    .line 313
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 1

    .prologue
    .line 317
    sget-object v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->defaultInstance:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 350
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I

    .line 352
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 1

    .prologue
    .line 470
    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->create()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$600()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 473
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 441
    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    .line 443
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 452
    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    .line 454
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    #calls: Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;->access$500(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;
    .registers 2

    .prologue
    .line 321
    sget-object v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->defaultInstance:Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 375
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedSerializedSize:I

    .line 376
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 393
    :goto_6
    return v0

    :cond_7
    move v0, v1

    move v2, v1

    .line 381
    :goto_9
    iget-object v3, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 382
    iget-object v3, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 385
    :cond_1f
    add-int v0, v1, v2

    .line 386
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getTracingCookiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 388
    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 389
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_3b
    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public getTracingCookies(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTracingCookiesCount()I
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTracingCookiesList()Ljava/util/List;
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
    .line 330
    iget-object v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getValidMs()I
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I

    return v0
.end method

.method public hasValidMs()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 343
    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->bitField0_:I

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

    .line 355
    iget-byte v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedIsInitialized:B

    .line 356
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 359
    :goto_8
    return v0

    .line 356
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 358
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2

    .prologue
    .line 471
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilderForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;
    .registers 2

    .prologue
    .line 475
    invoke-static {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->newBuilder(Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;)Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->toBuilder()Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse$Builder;

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
    .line 400
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
    const/4 v2, 0x1

    .line 364
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->getSerializedSize()I

    .line 365
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 366
    iget-object v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->tracingCookies_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 368
    :cond_19
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_25

    .line 369
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;->validMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 371
    :cond_25
    return-void
.end method
