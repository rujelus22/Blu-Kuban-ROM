.class public final Lcom/google/goggles/GogglesProtos$GogglesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CORRECTED_POSE_FIELD_NUMBER:I = 0x3

.field public static final PUGGLE_DEBUGGING_FIELD_NUMBER:I = 0x4

.field public static final RESULTS_FIELD_NUMBER:I = 0x1

.field public static final SUGGESTED_RESTRICTS_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4414
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 4415
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->initFields()V

    .line 4416
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3788
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 3859
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    .line 3905
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedSerializedSize:I

    .line 3789
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3783
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse;-><init>(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 3859
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    .line 3905
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedSerializedSize:I

    .line 3790
    return-void
.end method

.method static synthetic access$5500(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/goggles/GogglesProtos$GogglesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3783
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3783
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;)Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3783
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3783
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/goggles/GogglesProtos$GogglesResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3783
    iput p1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 1

    .prologue
    .line 3794
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    .line 3855
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    .line 3856
    invoke-static {}, Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;->getDefaultInstance()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    .line 3857
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 3858
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 1

    .prologue
    .line 4006
    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->create()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5300()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 4009
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3975
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    .line 3976
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3977
    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    .line 3979
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3986
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    .line 3987
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3988
    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    .line 3990
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3942
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3948
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3996
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4002
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3964
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3970
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3953
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3959
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;->access$5200(Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;)Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2

    .prologue
    .line 3798
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->defaultInstance:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3783
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPuggleDebugging()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;
    .registers 2

    .prologue
    .line 3840
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    return-object v0
.end method

.method public getResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 3816
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getResultsCount()I
    .registers 2

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getResultsOrBuilder(I)Lcom/google/goggles/ResultProtos$ResultOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$ResultOrBuilder;

    return-object v0
.end method

.method public getResultsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ResultProtos$ResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3907
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedSerializedSize:I

    .line 3908
    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    move v0, v1

    .line 3929
    :goto_9
    return v0

    :cond_a
    move v1, v0

    move v2, v0

    .line 3911
    :goto_c
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 3912
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3911
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 3915
    :cond_25
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_33

    .line 3916
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3919
    :cond_33
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 3920
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3923
    :cond_41
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_4f

    .line 3924
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3927
    :cond_4f
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->extensionsSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 3928
    iput v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedSerializedSize:I

    goto :goto_9
.end method

.method public getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public hasCorrectedPose()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3827
    iget v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPuggleDebugging()Z
    .registers 3

    .prologue
    .line 3837
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

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

.method public hasSuggestedRestricts()Z
    .registers 3

    .prologue
    .line 3847
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3861
    iget-byte v2, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    .line 3862
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 3881
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 3862
    goto :goto_9

    :cond_d
    move v2, v1

    .line 3864
    :goto_e
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResultsCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 3865
    invoke-virtual {p0, v2}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 3866
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 3864
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3870
    :cond_24
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->hasCorrectedPose()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3871
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_37

    .line 3872
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 3876
    :cond_37
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_40

    .line 3877
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 3880
    :cond_40
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->memoizedIsInitialized:B

    move v1, v0

    .line 3881
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4007
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3783
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilderForType()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;
    .registers 2

    .prologue
    .line 4011
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newBuilder(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3783
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->toBuilder()Lcom/google/goggles/GogglesProtos$GogglesResponse$Builder;

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
    .line 3936
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 3886
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getSerializedSize()I

    .line 3888
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v2

    .line 3890
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 3891
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->results_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3890
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 3893
    :cond_22
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2e

    .line 3894
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->correctedPose_:Lcom/google/goggles/PoseProtos$Pose;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3896
    :cond_2e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 3897
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->puggleDebugging_:Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3899
    :cond_3a
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_46

    .line 3900
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$GogglesResponse;->suggestedRestricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3902
    :cond_46
    const/high16 v0, 0x2000

    invoke-virtual {v2, v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 3903
    return-void
.end method
