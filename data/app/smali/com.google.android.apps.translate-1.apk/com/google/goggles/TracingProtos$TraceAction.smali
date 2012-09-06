.class public final Lcom/google/goggles/TracingProtos$TraceAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$TraceAction$Builder;,
        Lcom/google/goggles/TracingProtos$TraceAction$Type;
    }
.end annotation


# static fields
.field public static final ACTION_START_MS_FIELD_NUMBER:I = 0x4

.field public static final DURATION_MS_FIELD_NUMBER:I = 0x5

.field public static final GOGGLES_ID_FIELD_NUMBER:I = 0x9

.field public static final POINT_VARIABLES_FIELD_NUMBER:I = 0x3

.field public static final SERVER_DURATION_MS_FIELD_NUMBER:I = 0xa

.field public static final SPAN_VARIABLES_FIELD_NUMBER:I = 0x2

.field public static final TRACING_COOKIE_FIELD_NUMBER:I = 0x8

.field public static final TRACKING_ID_FIELD_NUMBER:I = 0xb

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$TraceAction;

.field private static final serialVersionUID:J


# instance fields
.field private actionStartMs_:J

.field private bitField0_:I

.field private durationMs_:I

.field private gogglesId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pointVariables_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;"
        }
    .end annotation
.end field

.field private serverDurationMs_:I

.field private spanVariables_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation
.end field

.field private tracingCookie_:Ljava/lang/Object;

.field private trackingId_:Ljava/lang/Object;

.field private type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2011
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$TraceAction;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceAction;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceAction;

    .line 2012
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceAction;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceAction;->initFields()V

    .line 2013
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 993
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1215
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    .line 1272
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedSerializedSize:I

    .line 994
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$TraceAction$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction;-><init>(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1215
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    .line 1272
    iput v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedSerializedSize:I

    .line 995
    return-void
.end method

.method static synthetic access$1602(Lcom/google/goggles/TracingProtos$TraceAction;Lcom/google/goggles/TracingProtos$TraceAction$Type;)Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/goggles/TracingProtos$TraceAction;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/goggles/TracingProtos$TraceAction;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 988
    iput-wide p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/google/goggles/TracingProtos$TraceAction;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I

    return p1
.end method

.method static synthetic access$2102(Lcom/google/goggles/TracingProtos$TraceAction;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/goggles/TracingProtos$TraceAction;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 988
    iput-wide p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/goggles/TracingProtos$TraceAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/goggles/TracingProtos$TraceAction;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput p1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 1

    .prologue
    .line 999
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceAction;

    return-object v0
.end method

.method private getTracingCookieBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    .line 1152
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1153
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1155
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    .line 1158
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTrackingIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    .line 1194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1195
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1197
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    .line 1200
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1205
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    .line 1207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    .line 1208
    iput-wide v2, p0, Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J

    .line 1209
    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I

    .line 1210
    iput v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    .line 1212
    iput-wide v2, p0, Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    .line 1214
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 1

    .prologue
    .line 1392
    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->create()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1400()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1395
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    .line 1362
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1363
    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    .line 1365
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1374
    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    .line 1376
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1334
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    #calls: Lcom/google/goggles/TracingProtos$TraceAction$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$TraceAction;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->access$1300(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionStartMs()J
    .registers 3

    .prologue
    .line 1107
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceAction;
    .registers 2

    .prologue
    .line 1003
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction;->defaultInstance:Lcom/google/goggles/TracingProtos$TraceAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$TraceAction;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .registers 2

    .prologue
    .line 1117
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I

    return v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1169
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J

    return-wide v0
.end method

.method public getPointVariables(I)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable;

    return-object v0
.end method

.method public getPointVariablesCount()I
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointVariablesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    return-object v0
.end method

.method public getPointVariablesOrBuilder(I)Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;

    return-object v0
.end method

.method public getPointVariablesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1274
    iget v3, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedSerializedSize:I

    .line 1275
    const/4 v0, -0x1

    if-eq v3, v0, :cond_c

    .line 1315
    :goto_b
    return v3

    .line 1278
    :cond_c
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_b4

    .line 1279
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Type;->getNumber()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1d
    move v2, v1

    move v3, v0

    .line 1282
    :goto_1f
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_38

    .line 1283
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1282
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    .line 1286
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 1287
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1290
    :cond_51
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_5e

    .line 1291
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J

    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1294
    :cond_5e
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_6c

    .line 1295
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 1298
    :cond_6c
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7d

    .line 1299
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTracingCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1302
    :cond_7d
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8e

    .line 1303
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1306
    :cond_8e
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_9d

    .line 1307
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 1310
    :cond_9d
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_b0

    .line 1311
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1314
    :cond_b0
    iput v3, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedSerializedSize:I

    goto/16 :goto_b

    :cond_b4
    move v0, v1

    goto/16 :goto_1d
.end method

.method public getServerDurationMs()I
    .registers 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I

    return v0
.end method

.method public getSpanVariables(I)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .parameter

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable;

    return-object v0
.end method

.method public getSpanVariablesCount()I
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanVariablesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    return-object v0
.end method

.method public getSpanVariablesOrBuilder(I)Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;

    return-object v0
.end method

.method public getSpanVariablesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    return-object v0
.end method

.method public getTracingCookie()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    .line 1138
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1139
    check-cast v0, Ljava/lang/String;

    .line 1147
    :goto_8
    return-object v0

    .line 1141
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1143
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1145
    iput-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->tracingCookie_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1147
    goto :goto_8
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    .line 1180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1181
    check-cast v0, Ljava/lang/String;

    .line 1189
    :goto_8
    return-object v0

    .line 1183
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1185
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1187
    iput-object v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->trackingId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1189
    goto :goto_8
.end method

.method public getType()Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    return-object v0
.end method

.method public hasActionStartMs()Z
    .registers 3

    .prologue
    .line 1104
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

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

.method public hasDurationMs()Z
    .registers 3

    .prologue
    .line 1114
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

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

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1166
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasServerDurationMs()Z
    .registers 3

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

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

.method public hasTracingCookie()Z
    .registers 3

    .prologue
    .line 1134
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

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

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 1176
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1052
    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1217
    iget-byte v2, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    .line 1218
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 1237
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 1218
    goto :goto_9

    .line 1220
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->hasType()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1221
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    goto :goto_a

    :cond_16
    move v2, v1

    .line 1224
    :goto_17
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getSpanVariablesCount()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1225
    invoke-virtual {p0, v2}, Lcom/google/goggles/TracingProtos$TraceAction;->getSpanVariables(I)Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/TracingProtos$SpanVariable;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1226
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    goto :goto_a

    .line 1224
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    move v2, v1

    .line 1230
    :goto_2e
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getPointVariablesCount()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1231
    invoke-virtual {p0, v2}, Lcom/google/goggles/TracingProtos$TraceAction;->getPointVariables(I)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/TracingProtos$PointVariable;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1232
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    goto :goto_a

    .line 1230
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1236
    :cond_44
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->memoizedIsInitialized:B

    move v1, v0

    .line 1237
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1393
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilderForType()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    .registers 2

    .prologue
    .line 1397
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder(Lcom/google/goggles/TracingProtos$TraceAction;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->toBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

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
    .line 1322
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1242
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getSerializedSize()I

    .line 1243
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_18

    .line 1244
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->type_:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_18
    move v1, v2

    .line 1246
    :goto_19
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 1247
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->spanVariables_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1246
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 1249
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_47

    .line 1250
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->pointVariables_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1249
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1252
    :cond_47
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_52

    .line 1253
    iget-wide v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->actionStartMs_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1255
    :cond_52
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_5e

    .line 1256
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1258
    :cond_5e
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6d

    .line 1259
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTracingCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1261
    :cond_6d
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7c

    .line 1262
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->gogglesId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1264
    :cond_7c
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_89

    .line 1265
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/goggles/TracingProtos$TraceAction;->serverDurationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1267
    :cond_89
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9a

    .line 1268
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$TraceAction;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1270
    :cond_9a
    return-void
.end method
