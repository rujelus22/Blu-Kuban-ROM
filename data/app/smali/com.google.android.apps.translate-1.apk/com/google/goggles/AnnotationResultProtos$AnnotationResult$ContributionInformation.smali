.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContributionInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    }
.end annotation


# static fields
.field public static final CONTRIBUTOR_FIELD_NUMBER:I = 0x1

.field public static final CREATION_TIMESTAMP_MS_FIELD_NUMBER:I = 0x3

.field public static final MOMENT_ID_FIELD_NUMBER:I = 0x7

.field public static final REPORT_ABUSE_URL_FIELD_NUMBER:I = 0x5

.field public static final USER_IS_OWNER_FIELD_NUMBER:I = 0x6

.field public static final USER_SUBMITTED_DESCRIPTION_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private creationTimestampMs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private momentId_:Ljava/lang/Object;

.field private reportAbuseUrl_:Ljava/lang/Object;

.field private userIsOwner_:Z

.field private userSubmittedDescription_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2821
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    .line 2822
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->initFields()V

    .line 2823
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2155
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2303
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedIsInitialized:B

    .line 2335
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedSerializedSize:I

    .line 2156
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2303
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedIsInitialized:B

    .line 2335
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedSerializedSize:I

    .line 2157
    return-void
.end method

.method static synthetic access$2902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-wide p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-boolean p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 1

    .prologue
    .line 2161
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    return-object v0
.end method

.method private getMomentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    .line 2285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2286
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2288
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    .line 2291
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getReportAbuseUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2243
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2244
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2246
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2249
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUserSubmittedDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2211
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2212
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2214
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2217
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 2296
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 2297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J

    .line 2298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z

    .line 2301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    .line 2302
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 1

    .prologue
    .line 2443
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2700()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2446
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2412
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    .line 2413
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2414
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    .line 2416
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2423
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    .line 2424
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2425
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    .line 2427
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2379
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2385
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2439
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2401
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2407
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2390
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2396
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;->access$2600(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getCreationTimestampMs()J
    .registers 3

    .prologue
    .line 2186
    iget-wide v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;
    .registers 2

    .prologue
    .line 2165
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;

    move-result-object v0

    return-object v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    .line 2271
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2272
    check-cast v0, Ljava/lang/String;

    .line 2280
    :goto_8
    return-object v0

    .line 2274
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2276
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2277
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2278
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->momentId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2280
    goto :goto_8
.end method

.method public getReportAbuseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    .line 2229
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2230
    check-cast v0, Ljava/lang/String;

    .line 2238
    :goto_8
    return-object v0

    .line 2232
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2234
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2236
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->reportAbuseUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2238
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    .line 2337
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedSerializedSize:I

    .line 2338
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2366
    :goto_7
    return v0

    .line 2340
    :cond_8
    const/4 v0, 0x0

    .line 2341
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 2342
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2345
    :cond_16
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 2346
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2349
    :cond_25
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 2350
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getUserSubmittedDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2353
    :cond_34
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_46

    .line 2354
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getReportAbuseUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2357
    :cond_46
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_56

    .line 2358
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2361
    :cond_56
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_68

    .line 2362
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getMomentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2365
    :cond_68
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getUserIsOwner()Z
    .registers 2

    .prologue
    .line 2260
    iget-boolean v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z

    return v0
.end method

.method public getUserSubmittedDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    .line 2197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2198
    check-cast v0, Ljava/lang/String;

    .line 2206
    :goto_8
    return-object v0

    .line 2200
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2202
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2203
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2204
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userSubmittedDescription_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 2206
    goto :goto_8
.end method

.method public hasContributor()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2173
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreationTimestampMs()Z
    .registers 3

    .prologue
    .line 2183
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

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

.method public hasMomentId()Z
    .registers 3

    .prologue
    .line 2267
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

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

.method public hasReportAbuseUrl()Z
    .registers 3

    .prologue
    .line 2225
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

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

.method public hasUserIsOwner()Z
    .registers 3

    .prologue
    .line 2257
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

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

.method public hasUserSubmittedDescription()Z
    .registers 3

    .prologue
    .line 2193
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2305
    iget-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedIsInitialized:B

    .line 2306
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 2309
    :goto_8
    return v0

    .line 2306
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 2308
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2444
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;
    .registers 2

    .prologue
    .line 2448
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation$Builder;

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
    .line 2373
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

    const/4 v1, 0x1

    .line 2314
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getSerializedSize()I

    .line 2315
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 2316
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2318
    :cond_10
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 2319
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->creationTimestampMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2321
    :cond_1d
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 2322
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getUserSubmittedDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2324
    :cond_2a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3a

    .line 2325
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getReportAbuseUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2327
    :cond_3a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_48

    .line 2328
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->userIsOwner_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2330
    :cond_48
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_58

    .line 2331
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$ContributionInformation;->getMomentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2333
    :cond_58
    return-void
.end method
