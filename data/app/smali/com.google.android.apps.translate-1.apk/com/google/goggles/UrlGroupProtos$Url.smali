.class public final Lcom/google/goggles/UrlGroupProtos$Url;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/UrlGroupProtos$Url$Builder;,
        Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final PURPOSE_FIELD_NUMBER:I = 0x3

.field public static final RECOMMENDED_QUICK_ACTION_FIELD_NUMBER:I = 0x4

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/UrlGroupProtos$Url;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

.field private recommendedQuickAction_:Z

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 621
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/UrlGroupProtos$Url;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$Url;

    .line 622
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$Url;

    invoke-direct {v0}, Lcom/google/goggles/UrlGroupProtos$Url;->initFields()V

    .line 623
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 213
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedIsInitialized:B

    .line 243
    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/UrlGroupProtos$Url$Builder;Lcom/google/goggles/UrlGroupProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url;-><init>(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedIsInitialized:B

    .line 243
    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/UrlGroupProtos$Url;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/UrlGroupProtos$Url;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/UrlGroupProtos$Url;Lcom/google/goggles/UrlGroupProtos$Url$Purpose;)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/UrlGroupProtos$Url;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/UrlGroupProtos$Url;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$Url;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    .line 177
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 178
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    .line 183
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    .line 145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 146
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    .line 151
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z

    .line 212
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 1

    .prologue
    .line 343
    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->create()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$100()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 314
    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    .line 316
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 325
    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    .line 327
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$Url;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 172
    :goto_8
    return-object v0

    .line 166
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 168
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 170
    iput-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 172
    goto :goto_8
.end method

.method public getPurpose()Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    return-object v0
.end method

.method public getRecommendedQuickAction()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 245
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedSerializedSize:I

    .line 246
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 266
    :goto_8
    return v0

    .line 248
    :cond_9
    const/4 v0, 0x0

    .line 249
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 250
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_19
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 254
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_28
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3a

    .line 258
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    invoke-virtual {v2}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_3a
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_49

    .line 262
    iget-boolean v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_49
    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    .line 131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 140
    :goto_8
    return-object v0

    .line 134
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 136
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 138
    iput-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 140
    goto :goto_8
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

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

.method public hasPurpose()Z
    .registers 3

    .prologue
    .line 191
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

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

.method public hasRecommendedQuickAction()Z
    .registers 3

    .prologue
    .line 201
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

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

    .line 215
    iget-byte v2, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedIsInitialized:B

    .line 216
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 223
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 216
    goto :goto_9

    .line 218
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->hasUrl()Z

    move-result v2

    if-nez v2, :cond_16

    .line 219
    iput-byte v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedIsInitialized:B

    move v0, v1

    .line 220
    goto :goto_9

    .line 222
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 344
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilderForType()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 348
    invoke-static {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->toBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

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
    .line 273
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

    .line 228
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getSerializedSize()I

    .line 229
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 230
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 232
    :cond_13
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 233
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 235
    :cond_20
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 236
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    invoke-virtual {v1}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 238
    :cond_30
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 239
    iget-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 241
    :cond_3d
    return-void
.end method
