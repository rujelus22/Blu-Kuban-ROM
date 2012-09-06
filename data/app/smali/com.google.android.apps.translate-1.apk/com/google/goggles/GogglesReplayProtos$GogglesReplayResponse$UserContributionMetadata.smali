.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserContributionMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CONTRIBUTOR_FIELD_NUMBER:I = 0x5

.field public static final CREATION_TIME_MS_SINCE_EPOCH_FIELD_NUMBER:I = 0x7

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final REGION_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field public static final WEBSEARCH_URL_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private creationTimeMsSinceEpoch_:J

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private websearchUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1350
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1351
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->initFields()V

    .line 1352
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 556
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 737
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedIsInitialized:B

    .line 778
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedSerializedSize:I

    .line 557
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 737
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedIsInitialized:B

    .line 778
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedSerializedSize:I

    .line 558
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 551
    iput-wide p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 1

    .prologue
    .line 562
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    .line 624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 625
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 627
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    .line 630
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    .line 592
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 593
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 595
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    .line 598
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    .line 666
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 667
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 669
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    .line 672
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 709
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 711
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    .line 714
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    .line 730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    .line 731
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    .line 733
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    .line 735
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J

    .line 736
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 1

    .prologue
    .line 890
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$800()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2
    .parameter

    .prologue
    .line 893
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    .line 860
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 861
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    .line 863
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 872
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    .line 874
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getCreationTimeMsSinceEpoch()J
    .registers 3

    .prologue
    .line 725
    iget-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 566
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    .line 610
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 611
    check-cast v0, Ljava/lang/String;

    .line 619
    :goto_8
    return-object v0

    .line 613
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 615
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 617
    iput-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 619
    goto :goto_8
.end method

.method public getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 780
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedSerializedSize:I

    .line 781
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 813
    :goto_8
    return v0

    .line 783
    :cond_9
    const/4 v0, 0x0

    .line 784
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 785
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 788
    :cond_19
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 789
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 792
    :cond_28
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_36

    .line 793
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 796
    :cond_36
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_47

    .line 797
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 800
    :cond_47
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_57

    .line 801
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 804
    :cond_57
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_69

    .line 805
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :cond_69
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_79

    .line 809
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_79
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    .line 578
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 579
    check-cast v0, Ljava/lang/String;

    .line 587
    :goto_8
    return-object v0

    .line 581
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 583
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 585
    iput-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 587
    goto :goto_8
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    .line 652
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 653
    check-cast v0, Ljava/lang/String;

    .line 661
    :goto_8
    return-object v0

    .line 655
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 657
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 659
    iput-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 661
    goto :goto_8
.end method

.method public getWebsearchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    .line 694
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 695
    check-cast v0, Ljava/lang/String;

    .line 703
    :goto_8
    return-object v0

    .line 697
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 699
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 701
    iput-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 703
    goto :goto_8
.end method

.method public hasContributor()Z
    .registers 3

    .prologue
    .line 680
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public hasCreationTimeMsSinceEpoch()Z
    .registers 3

    .prologue
    .line 722
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 606
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public hasRegion()Z
    .registers 3

    .prologue
    .line 638
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 574
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 648
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public hasWebsearchUrl()Z
    .registers 3

    .prologue
    .line 690
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 739
    iget-byte v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedIsInitialized:B

    .line 740
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 749
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 740
    goto :goto_9

    .line 742
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 743
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 744
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedIsInitialized:B

    move v0, v1

    .line 745
    goto :goto_9

    .line 748
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 891
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 895
    invoke-static {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

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
    .line 820
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

    .line 754
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getSerializedSize()I

    .line 755
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 756
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 758
    :cond_13
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 759
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 761
    :cond_20
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 762
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 764
    :cond_2c
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 765
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 767
    :cond_3b
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 768
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 770
    :cond_49
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 771
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getWebsearchUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 773
    :cond_59
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_67

    .line 774
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 776
    :cond_67
    return-void
.end method
