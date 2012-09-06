.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClickOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeClientClick"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;,
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    }
.end annotation


# static fields
.field public static final ACTION_POSITION_FIELD_NUMBER:I = 0x7

.field public static final CLICK_TARGET_FIELD_NUMBER:I = 0x1

.field public static final DISPLAY_POSITION_FIELD_NUMBER:I = 0x5

.field public static final NOTIFICATION_RESULTS_COUNT_FIELD_NUMBER:I = 0x4

.field public static final RESULTS_SHOWN_ABOVE_FOLD_FIELD_NUMBER:I = 0x3

.field public static final RESULT_ID_FIELD_NUMBER:I = 0x6

.field public static final RESULT_POSITION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

.field private static final serialVersionUID:J


# instance fields
.field private actionPosition_:I

.field private bitField0_:I

.field private clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

.field private displayPosition_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notificationResultsCount_:I

.field private resultId_:Ljava/lang/Object;

.field private resultPosition_:I

.field private resultsShownAboveFold_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1058
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 1059
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->initFields()V

    .line 1060
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 539
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedIsInitialized:B

    .line 578
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedSerializedSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 539
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedIsInitialized:B

    .line 578
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    return-object v0
.end method

.method private getResultIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    .line 510
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 511
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 513
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    .line 516
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

    .line 531
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->RESULT_CLICK_IN_RESULTS_LIST:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    .line 532
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I

    .line 533
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I

    .line 534
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I

    .line 535
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    .line 537
    iput v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I

    .line 538
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 1

    .prologue
    .line 690
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$100()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2
    .parameter

    .prologue
    .line 693
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 660
    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 661
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    .line 663
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    .line 671
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 672
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    .line 674
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;->access$000(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionPosition()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I

    return v0
.end method

.method public getClickTarget()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPosition()I
    .registers 2

    .prologue
    .line 485
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I

    return v0
.end method

.method public getNotificationResultsCount()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    .line 496
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 497
    check-cast v0, Ljava/lang/String;

    .line 505
    :goto_8
    return-object v0

    .line 499
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 501
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 503
    iput-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 505
    goto :goto_8
.end method

.method public getResultPosition()I
    .registers 2

    .prologue
    .line 455
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I

    return v0
.end method

.method public getResultsShownAboveFold()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 580
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedSerializedSize:I

    .line 581
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 613
    :goto_8
    return v0

    .line 583
    :cond_9
    const/4 v0, 0x0

    .line 584
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 585
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-virtual {v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    :cond_1b
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 589
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 592
    :cond_28
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_36

    .line 593
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 596
    :cond_36
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 597
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 600
    :cond_45
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_55

    .line 601
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_55
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_67

    .line 605
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_67
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_77

    .line 609
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_77
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasActionPosition()Z
    .registers 3

    .prologue
    .line 524
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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

.method public hasClickTarget()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 442
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDisplayPosition()Z
    .registers 3

    .prologue
    .line 482
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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

.method public hasNotificationResultsCount()Z
    .registers 3

    .prologue
    .line 472
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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

.method public hasResultId()Z
    .registers 3

    .prologue
    .line 492
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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

.method public hasResultPosition()Z
    .registers 3

    .prologue
    .line 452
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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

.method public hasResultsShownAboveFold()Z
    .registers 3

    .prologue
    .line 462
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 541
    iget-byte v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedIsInitialized:B

    .line 542
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 549
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 542
    goto :goto_9

    .line 544
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->hasClickTarget()Z

    move-result v2

    if-nez v2, :cond_16

    .line 545
    iput-byte v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedIsInitialized:B

    move v0, v1

    .line 546
    goto :goto_9

    .line 548
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 691
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;
    .registers 2

    .prologue
    .line 695
    invoke-static {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$Builder;

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
    .line 620
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

    .line 554
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getSerializedSize()I

    .line 555
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 556
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->clickTarget_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 558
    :cond_15
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 559
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultPosition_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 561
    :cond_20
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 562
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->resultsShownAboveFold_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 564
    :cond_2c
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 565
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->notificationResultsCount_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 567
    :cond_39
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 568
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->displayPosition_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 570
    :cond_47
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 571
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 573
    :cond_57
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    .line 574
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->actionPosition_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 576
    :cond_65
    return-void
.end method
