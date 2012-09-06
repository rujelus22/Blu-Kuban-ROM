.class public final Lcom/google/wireless/webapps/Analytics$LogEnvelope;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$LogEnvelopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEnvelope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;,
        Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private buildNumber_:Ljava/lang/Object;

.field private client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field private customValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private platform_:Ljava/lang/Object;

.field private sendTimeMsec_:J

.field private version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 980
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->defaultInstance:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 981
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->defaultInstance:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->initFields()V

    .line 982
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 285
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedIsInitialized:B

    .line 320
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;-><init>(Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 285
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedIsInitialized:B

    .line 320
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedSerializedSize:I

    .line 53
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/webapps/Analytics$LogEnvelope;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/webapps/Analytics$LogEnvelope;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/wireless/webapps/Analytics$LogEnvelope;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J

    return-wide p1
.end method

.method private getBuildNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    .line 256
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 257
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    .line 262
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

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->defaultInstance:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object v0
.end method

.method private getPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    .line 182
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 183
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 185
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    .line 188
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

.method private getVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    .line 150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    .line 156
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
    .registers 3

    .prologue
    .line 277
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J

    .line 284
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 1

    .prologue
    .line 432
    #calls: Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->create()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->access$100()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 435
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBuildNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    .line 242
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 243
    check-cast v1, Ljava/lang/String;

    .line 251
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 247
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 249
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->buildNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 251
    goto :goto_8
.end method

.method public getClient()Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    return-object v0
.end method

.method public getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method public getCustomValueCount()I
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method public getCustomValueOrBuilder(I)Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;

    return-object v0
.end method

.method public getCustomValueOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->defaultInstance:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object v0
.end method

.method public getEvent(I)Lcom/google/wireless/webapps/Analytics$Event;
    .registers 3
    .parameter "index"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event;

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/google/wireless/webapps/Analytics$EventOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$EventOrBuilder;

    return-object v0
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    .line 168
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 169
    check-cast v1, Ljava/lang/String;

    .line 177
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 171
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 173
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 175
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->platform_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 177
    goto :goto_8
.end method

.method public getSendTimeMsec()J
    .registers 3

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 322
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedSerializedSize:I

    .line 323
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 355
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 325
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 326
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 327
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-virtual {v3}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 330
    :cond_1c
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 331
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 334
    :cond_2b
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3b

    .line 335
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 338
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_54

    .line 339
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 342
    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6e

    .line 343
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 346
    :cond_6e
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_80

    .line 347
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getBuildNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 350
    :cond_80
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_90

    .line 351
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 354
    :cond_90
    iput v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedSerializedSize:I

    move v2, v1

    .line 355
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_9
.end method

.method public getVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    .line 136
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 145
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 141
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 143
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->version_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 145
    goto :goto_8
.end method

.method public hasBuildNumber()Z
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

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

.method public hasClient()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPlatform()Z
    .registers 3

    .prologue
    .line 164
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

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

.method public hasSendTimeMsec()Z
    .registers 3

    .prologue
    .line 270
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedIsInitialized:B

    .line 288
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 291
    :goto_8
    return v1

    .line 288
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 290
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilderForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->toBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 2

    .prologue
    .line 437
    invoke-static {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

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
    .line 362
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getSerializedSize()I

    .line 297
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 298
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->client_:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 300
    :cond_15
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 301
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 303
    :cond_22
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 304
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 306
    :cond_30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 307
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 309
    :cond_47
    const/4 v0, 0x0

    :goto_48
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 310
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->customValue_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 312
    :cond_5f
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6f

    .line 313
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getBuildNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 315
    :cond_6f
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7d

    .line 316
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->sendTimeMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 318
    :cond_7d
    return-void
.end method
