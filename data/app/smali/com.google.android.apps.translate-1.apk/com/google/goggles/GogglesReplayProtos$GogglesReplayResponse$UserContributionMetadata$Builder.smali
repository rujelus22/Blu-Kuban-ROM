.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

.field private creationTimeMsSinceEpoch_:J

.field private description_:Ljava/lang/Object;

.field private region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private title_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private websearchUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1168
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1247
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 903
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 904
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 1

    .prologue
    .line 897
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 951
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 954
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 1

    .prologue
    .line 909
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 907
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 3

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 942
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 944
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->build()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 958
    new-instance v2, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V

    .line 959
    iget v3, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 960
    const/4 v1, 0x0

    .line 961
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_63

    .line 964
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->title_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1002(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 966
    or-int/lit8 v0, v0, 0x2

    .line 968
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->description_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1102(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 970
    or-int/lit8 v0, v0, 0x4

    .line 972
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1202(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 973
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 974
    or-int/lit8 v0, v0, 0x8

    .line 976
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->type_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 978
    or-int/lit8 v0, v0, 0x10

    .line 980
    :cond_40
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 981
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 982
    or-int/lit8 v0, v0, 0x20

    .line 984
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->websearchUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 986
    or-int/lit8 v0, v0, 0x40

    .line 988
    :cond_5a
    iget-wide v3, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->creationTimeMsSinceEpoch_:J
    invoke-static {v2, v3, v4}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1602(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;J)J

    .line 989
    #setter for: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->access$1702(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;I)I

    .line 990
    return-object v2

    :cond_63
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3

    .prologue
    .line 913
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 915
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 917
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 918
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 919
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 921
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 922
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 923
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 925
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    .line 927
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 928
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clear()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContributor()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1283
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 1285
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1286
    return-object p0
.end method

.method public clearCreationTimeMsSinceEpoch()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3

    .prologue
    .line 1340
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    .line 1343
    return-object p0
.end method

.method public clearDescription()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1157
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1159
    return-object p0
.end method

.method public clearRegion()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1204
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1206
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1207
    return-object p0
.end method

.method public clearTitle()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1121
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1123
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1236
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1238
    return-object p0
.end method

.method public clearWebsearchUrl()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 2

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1315
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 1317
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3

    .prologue
    .line 932
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->buildPartial()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->clone()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    return-object v0
.end method

.method public getCreationTimeMsSinceEpoch()J
    .registers 3

    .prologue
    .line 1331
    iget-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 936
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1138
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1139
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1140
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1143
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1102
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1103
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1104
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1107
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1217
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1218
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1219
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1222
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getWebsearchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 1296
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1297
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1298
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 1301
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasContributor()Z
    .registers 3

    .prologue
    .line 1249
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .line 1328
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .line 1134
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .line 1170
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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

    .line 1098
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .line 1213
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .line 1292
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1021
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1023
    const/4 v0, 0x0

    .line 1026
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1271
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1273
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 1279
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1280
    return-object p0

    .line 1276
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 4
    .parameter

    .prologue
    .line 994
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1016
    :cond_6
    :goto_6
    return-object p0

    .line 995
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 996
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setTitle(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 998
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 999
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setDescription(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1001
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1002
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1004
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1005
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setType(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1007
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasContributor()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1008
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1010
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasWebsearchUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1011
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setWebsearchUrl(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    .line 1013
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->hasCreationTimeMsSinceEpoch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1014
    invoke-virtual {p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getCreationTimeMsSinceEpoch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setCreationTimeMsSinceEpoch(J)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1035
    sparse-switch v0, :sswitch_data_88

    .line 1040
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    :sswitch_d
    return-object p0

    .line 1047
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1048
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 1052
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 1057
    :sswitch_28
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 1058
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->hasRegion()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1059
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 1061
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1062
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    goto :goto_0

    .line 1066
    :sswitch_44
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 1071
    :sswitch_51
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    .line 1072
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->hasContributor()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1073
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->getContributor()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 1075
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1076
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    goto :goto_0

    .line 1080
    :sswitch_6d
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1081
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 1085
    :sswitch_7a
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1086
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    goto/16 :goto_0

    .line 1035
    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
        0x2a -> :sswitch_51
        0x32 -> :sswitch_6d
        0x38 -> :sswitch_7a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 897
    check-cast p1, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1194
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1200
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1201
    return-object p0

    .line 1197
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1265
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 1267
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1268
    return-object p0
.end method

.method public setContributor(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1255
    if-nez p1, :cond_8

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->contributor_:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    .line 1260
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1261
    return-object p0
.end method

.method public setCreationTimeMsSinceEpoch(J)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1334
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1335
    iput-wide p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->creationTimeMsSinceEpoch_:J

    .line 1337
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1147
    if-nez p1, :cond_8

    .line 1148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1150
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1151
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1153
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1162
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1163
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->description_:Ljava/lang/Object;

    .line 1165
    return-void
.end method

.method public setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1186
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1188
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1189
    return-object p0
.end method

.method public setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1176
    if-nez p1, :cond_8

    .line 1177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1179
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1181
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1182
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1111
    if-nez p1, :cond_8

    .line 1112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1114
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1115
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1117
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1126
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1127
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->title_:Ljava/lang/Object;

    .line 1129
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1226
    if-nez p1, :cond_8

    .line 1227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1229
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1230
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1232
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1241
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1242
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->type_:Ljava/lang/Object;

    .line 1244
    return-void
.end method

.method public setWebsearchUrl(Ljava/lang/String;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1305
    if-nez p1, :cond_8

    .line 1306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1308
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1309
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 1311
    return-object p0
.end method

.method setWebsearchUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1320
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->bitField0_:I

    .line 1321
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata$Builder;->websearchUrl_:Ljava/lang/Object;

    .line 1323
    return-void
.end method
