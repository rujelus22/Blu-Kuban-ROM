.class public final Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "GogglesConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesConfigProtos$GogglesConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;",
        ">;",
        "Lcom/google/goggles/GogglesConfigProtos$GogglesConfigOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAN_LOG_IMAGE_FIELD_NUMBER:I = 0x7

.field public static final CAN_STORE_TO_SEARCH_HISTORY_FIELD_NUMBER:I = 0x5

.field public static final COUNTRY_FIELD_NUMBER:I = 0x6

.field public static final LANGUAGE_PREF_FIELD_NUMBER:I = 0x4

.field public static final MAX_RESULTS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private canLogImage_:Z

.field private canStoreToSearchHistory_:Z

.field private country_:Ljava/lang/Object;

.field private languagePref_:Ljava/lang/Object;

.field private maxResults_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 603
    new-instance v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->defaultInstance:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 604
    sget-object v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->defaultInstance:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-direct {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->initFields()V

    .line 605
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 155
    iput-byte v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedIsInitialized:B

    .line 192
    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;Lcom/google/goggles/GogglesConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;-><init>(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 155
    iput-byte v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedIsInitialized:B

    .line 192
    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    return p1
.end method

.method private getCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    .line 118
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 119
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    .line 124
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->defaultInstance:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method private getLanguagePrefBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    .line 86
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 87
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    .line 92
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    .line 152
    iput-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z

    .line 153
    iput-boolean v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z

    .line 154
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 1

    .prologue
    .line 297
    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->create()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$100()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2
    .parameter

    .prologue
    .line 300
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 268
    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    .line 270
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 279
    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    .line 281
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    #calls: Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->buildParsed()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    invoke-static {v0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;->access$000(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCanLogImage()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z

    return v0
.end method

.method public getCanStoreToSearchHistory()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    .line 104
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 105
    check-cast v0, Ljava/lang/String;

    .line 113
    :goto_8
    return-object v0

    .line 107
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 109
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 111
    iput-object v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->country_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 113
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->defaultInstance:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstanceForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagePref()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    .line 72
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 81
    :goto_8
    return-object v0

    .line 75
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    iput-object v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->languagePref_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 81
    goto :goto_8
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 194
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedSerializedSize:I

    .line 195
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 220
    :goto_7
    return v0

    .line 197
    :cond_8
    const/4 v0, 0x0

    .line 198
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 199
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_16
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 203
    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getLanguagePrefBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_26
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_36

    .line 207
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_36
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_46

    .line 211
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_46
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_56

    .line 215
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_56
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    iput v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasCanLogImage()Z
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

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

.method public hasCanStoreToSearchHistory()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

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

.method public hasCountry()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

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

.method public hasLanguagePref()Z
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 157
    iget-byte v2, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedIsInitialized:B

    .line 158
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 165
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 158
    goto :goto_9

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_16

    .line 161
    iput-byte v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedIsInitialized:B

    move v0, v1

    .line 162
    goto :goto_9

    .line 164
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 298
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilderForType()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;
    .registers 2

    .prologue
    .line 302
    invoke-static {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newBuilder(Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->toBuilder()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig$Builder;

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
    .line 227
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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

    const/4 v2, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getSerializedSize()I

    .line 172
    invoke-virtual {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 175
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->maxResults_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 177
    :cond_14
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 178
    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getLanguagePrefBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 180
    :cond_22
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 181
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canStoreToSearchHistory_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 183
    :cond_30
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_3e

    .line 184
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 186
    :cond_3e
    iget v1, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4c

    .line 187
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->canLogImage_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 189
    :cond_4c
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 190
    return-void
.end method
