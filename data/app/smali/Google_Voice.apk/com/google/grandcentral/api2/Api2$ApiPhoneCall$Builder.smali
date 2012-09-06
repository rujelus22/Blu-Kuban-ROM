.class public final Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coarseType_:I

.field private contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

.field private did_:Ljava/lang/Object;

.field private displayableCost_:Ljava/lang/Object;

.field private duration_:F

.field private ecid_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private messageText_:Ljava/lang/Object;

.field private recordingUrl_:Ljava/lang/Object;

.field private startTime_:J

.field private status_:I

.field private transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

.field private transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18926
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 19011
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 19054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19308
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 18564
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->maybeForceBuilderInitialization()V

    .line 18565
    return-void
.end method

.method static synthetic access$21300()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 1

    .prologue
    .line 18558
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 1

    .prologue
    .line 18570
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18568
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3

    .prologue
    .line 18615
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    .line 18616
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18617
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18619
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 6

    .prologue
    .line 18623
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 18624
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18625
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18626
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 18627
    or-int/lit8 v2, v2, 0x1

    .line 18629
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21502(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18630
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 18631
    or-int/lit8 v2, v2, 0x2

    .line 18633
    :cond_1c
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->startTime_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21602(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;J)J

    .line 18634
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 18635
    or-int/lit8 v2, v2, 0x4

    .line 18637
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21702(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18638
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 18639
    or-int/lit8 v2, v2, 0x8

    .line 18641
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21802(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18642
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 18643
    or-int/lit8 v2, v2, 0x10

    .line 18645
    :cond_42
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->type_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21902(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I

    .line 18646
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 18647
    or-int/lit8 v2, v2, 0x20

    .line 18649
    :cond_4f
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->status_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22002(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I

    .line 18650
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 18651
    or-int/lit8 v2, v2, 0x40

    .line 18653
    :cond_5c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22102(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 18654
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 18655
    or-int/lit16 v2, v2, 0x80

    .line 18657
    :cond_69
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22202(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18658
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 18659
    or-int/lit16 v2, v2, 0x100

    .line 18661
    :cond_76
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->duration_:F

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22302(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;F)F

    .line 18662
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 18663
    or-int/lit16 v2, v2, 0x200

    .line 18665
    :cond_83
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22402(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18666
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 18667
    or-int/lit16 v2, v2, 0x400

    .line 18669
    :cond_90
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22502(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18670
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 18671
    or-int/lit16 v2, v2, 0x800

    .line 18673
    :cond_9d
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22602(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18674
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_aa

    .line 18675
    or-int/lit16 v2, v2, 0x1000

    .line 18677
    :cond_aa
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->coarseType_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22702(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I

    .line 18678
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_b7

    .line 18679
    or-int/lit16 v2, v2, 0x2000

    .line 18681
    :cond_b7
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22802(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 18682
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22902(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I

    .line 18683
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 18574
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18576
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->startTime_:J

    .line 18578
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18580
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18581
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18582
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18583
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->type_:I

    .line 18584
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18585
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->status_:I

    .line 18586
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18587
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 18588
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 18590
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18591
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->duration_:F

    .line 18592
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 18594
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 18596
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 18598
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18599
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->coarseType_:I

    .line 18600
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18601
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 18602
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18603
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCoarseType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19301
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->coarseType_:I

    .line 19304
    return-object p0
.end method

.method public clearContact()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18962
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18964
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18965
    return-object p0
.end method

.method public clearDid()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18909
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18910
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18912
    return-object p0
.end method

.method public clearDisplayableCost()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19217
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19218
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDisplayableCost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19220
    return-object p0
.end method

.method public clearDuration()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19121
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19122
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->duration_:F

    .line 19124
    return-object p0
.end method

.method public clearEcid()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19090
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19091
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getEcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19093
    return-object p0
.end method

.method public clearId()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18835
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18836
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18838
    return-object p0
.end method

.method public clearMessageText()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19164
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19165
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19167
    return-object p0
.end method

.method public clearRecordingUrl()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19270
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19271
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getRecordingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19273
    return-object p0
.end method

.method public clearStartTime()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3

    .prologue
    .line 18866
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->startTime_:J

    .line 18869
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19004
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19005
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->status_:I

    .line 19007
    return-object p0
.end method

.method public clearTranscript()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19047
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 19049
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19050
    return-object p0
.end method

.method public clearTranscriptStatus()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 19325
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19326
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 19328
    return-object p0
.end method

.method public clearType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18983
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18984
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->type_:I

    .line 18986
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3

    .prologue
    .line 18607
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

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
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoarseType()I
    .registers 2

    .prologue
    .line 19292
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->coarseType_:I

    return v0
.end method

.method public getContact()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2

    .prologue
    .line 18931
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2

    .prologue
    .line 18611
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18878
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18879
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18880
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18881
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18884
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18889
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18890
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18891
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18893
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18896
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

.method public getDisplayableCost()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19186
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19187
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19188
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19189
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19192
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getDisplayableCostBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19197
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19198
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19199
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19201
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19204
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

.method public getDuration()F
    .registers 2

    .prologue
    .line 19112
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->duration_:F

    return v0
.end method

.method public getEcid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19059
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19060
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19061
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19062
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19065
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getEcidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19070
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19071
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19072
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19074
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19077
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18804
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18805
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18806
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18807
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18810
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18815
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18816
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18817
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18819
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18822
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

.method public getMessageText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19133
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19134
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19135
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19136
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19139
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getMessageTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19144
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19145
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19146
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19148
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19151
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

.method public getRecordingUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19239
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19240
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19241
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19242
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19245
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getRecordingUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19250
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19251
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19252
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19254
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19257
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

.method public getStartTime()J
    .registers 3

    .prologue
    .line 18857
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->startTime_:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 18995
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->status_:I

    return v0
.end method

.method public getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2

    .prologue
    .line 19016
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public getTranscriptStatus()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 2

    .prologue
    .line 19313
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 18974
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->type_:I

    return v0
.end method

.method public hasCoarseType()Z
    .registers 3

    .prologue
    .line 19289
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContact()Z
    .registers 3

    .prologue
    .line 18928
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public hasDid()Z
    .registers 3

    .prologue
    .line 18875
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public hasDisplayableCost()Z
    .registers 3

    .prologue
    .line 19183
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 19109
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEcid()Z
    .registers 3

    .prologue
    .line 19056
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18801
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMessageText()Z
    .registers 3

    .prologue
    .line 19130
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRecordingUrl()Z
    .registers 3

    .prologue
    .line 19236
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStartTime()Z
    .registers 3

    .prologue
    .line 18854
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 18992
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public hasTranscript()Z
    .registers 3

    .prologue
    .line 19013
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public hasTranscriptStatus()Z
    .registers 3

    .prologue
    .line 19310
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

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
    .line 18971
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 18746
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_8

    .line 18776
    :cond_7
    :goto_7
    return v0

    .line 18750
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18754
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasDid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18758
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasContact()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18762
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18766
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18770
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasTranscript()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 18771
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18776
    :cond_36
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeContact(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18950
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 18952
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18958
    :goto_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18959
    return-object p0

    .line 18955
    :cond_27
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 18687
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18742
    :cond_6
    :goto_6
    return-object p0

    .line 18688
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasId()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 18689
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18690
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21500(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18693
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 18694
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setStartTime(J)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18696
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasDid()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 18697
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18698
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$21700(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18701
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasContact()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 18702
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getContact()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeContact(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18704
    :cond_45
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasType()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 18705
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18707
    :cond_52
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 18708
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setStatus(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18710
    :cond_5f
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 18711
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeTranscript(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18713
    :cond_6c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasEcid()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 18714
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18715
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22200(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 18718
    :cond_7e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 18719
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDuration()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setDuration(F)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18721
    :cond_8b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasMessageText()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 18722
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18723
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22400(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 18726
    :cond_9d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasDisplayableCost()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 18727
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18728
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22500(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 18731
    :cond_af
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasRecordingUrl()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 18732
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18733
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->access$22600(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 18736
    :cond_c1
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasCoarseType()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 18737
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getCoarseType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setCoarseType(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18739
    :cond_ce
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasTranscriptStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18740
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getTranscriptStatus()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setTranscriptStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18783
    const/4 v2, 0x0

    .line 18785
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 18790
    if-eqz v2, :cond_10

    .line 18791
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 18794
    :cond_10
    return-object p0

    .line 18786
    :catch_11
    move-exception v1

    .line 18787
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-object v2, v0

    .line 18788
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 18790
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 18791
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    :cond_21
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18558
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18558
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18558
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTranscript(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19035
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19037
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 19043
    :goto_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19044
    return-object p0

    .line 19040
    :cond_27
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    goto :goto_20
.end method

.method public setCoarseType(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19295
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19296
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->coarseType_:I

    .line 19298
    return-object p0
.end method

.method public setContact(Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18944
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18946
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18947
    return-object p0
.end method

.method public setContact(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18934
    if-nez p1, :cond_8

    .line 18935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18937
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18939
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18940
    return-object p0
.end method

.method public setDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18900
    if-nez p1, :cond_8

    .line 18901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18903
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18904
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18906
    return-object p0
.end method

.method public setDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18916
    if-nez p1, :cond_8

    .line 18917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18919
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18920
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->did_:Ljava/lang/Object;

    .line 18922
    return-object p0
.end method

.method public setDisplayableCost(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19208
    if-nez p1, :cond_8

    .line 19209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19211
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19212
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19214
    return-object p0
.end method

.method public setDisplayableCostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19224
    if-nez p1, :cond_8

    .line 19225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19227
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->displayableCost_:Ljava/lang/Object;

    .line 19230
    return-object p0
.end method

.method public setDuration(F)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19115
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19116
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->duration_:F

    .line 19118
    return-object p0
.end method

.method public setEcid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19081
    if-nez p1, :cond_8

    .line 19082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19084
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19085
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19087
    return-object p0
.end method

.method public setEcidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19097
    if-nez p1, :cond_8

    .line 19098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19100
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19101
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->ecid_:Ljava/lang/Object;

    .line 19103
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18826
    if-nez p1, :cond_8

    .line 18827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18829
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18830
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18832
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18842
    if-nez p1, :cond_8

    .line 18843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18845
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18846
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->id_:Ljava/lang/Object;

    .line 18848
    return-object p0
.end method

.method public setMessageText(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19155
    if-nez p1, :cond_8

    .line 19156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19158
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19159
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19161
    return-object p0
.end method

.method public setMessageTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19171
    if-nez p1, :cond_8

    .line 19172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19174
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19175
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->messageText_:Ljava/lang/Object;

    .line 19177
    return-object p0
.end method

.method public setRecordingUrl(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19261
    if-nez p1, :cond_8

    .line 19262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19264
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19265
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19267
    return-object p0
.end method

.method public setRecordingUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19277
    if-nez p1, :cond_8

    .line 19278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19280
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19281
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->recordingUrl_:Ljava/lang/Object;

    .line 19283
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18860
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18861
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->startTime_:J

    .line 18863
    return-object p0
.end method

.method public setStatus(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18998
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18999
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->status_:I

    .line 19001
    return-object p0
.end method

.method public setTranscript(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 19029
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 19031
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19032
    return-object p0
.end method

.method public setTranscript(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19019
    if-nez p1, :cond_8

    .line 19020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19022
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 19024
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19025
    return-object p0
.end method

.method public setTranscriptStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19316
    if-nez p1, :cond_8

    .line 19317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19319
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 19320
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 19322
    return-object p0
.end method

.method public setType(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18977
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->bitField0_:I

    .line 18978
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->type_:I

    .line 18980
    return-object p0
.end method
