.class public final Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Event.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;",
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

.field private bitField0_:I

.field private count_:J

.field private duration_:J

.field private label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

.field private position_:J

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 857
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 923
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 732
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 733
    return-void
.end method

.method static synthetic access$100()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 1

    .prologue
    .line 726
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->create()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 1

    .prologue
    .line 738
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 736
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    .line 768
    .local v0, result:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 769
    invoke-static {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 771
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->build()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 6

    .prologue
    .line 775
    new-instance v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Event$1;)V

    .line 776
    .local v1, result:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 777
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 778
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 779
    or-int/lit8 v2, v2, 0x1

    .line 781
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$302(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 782
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 783
    or-int/lit8 v2, v2, 0x2

    .line 785
    :cond_1c
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->position_:J

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$402(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J

    .line 786
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 787
    or-int/lit8 v2, v2, 0x4

    .line 789
    :cond_28
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$502(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J

    .line 790
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 791
    or-int/lit8 v2, v2, 0x8

    .line 793
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$602(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 794
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 795
    or-int/lit8 v2, v2, 0x10

    .line 797
    :cond_42
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->count_:J

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$702(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J

    .line 798
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 799
    or-int/lit8 v2, v2, 0x20

    .line 801
    :cond_4f
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->timestamp_:J

    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$802(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J

    .line 802
    #setter for: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->access$902(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;I)I

    .line 803
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 742
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 743
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 744
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 745
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 746
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 747
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 748
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 749
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 750
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 751
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 752
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 753
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->timestamp_:J

    .line 754
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 755
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clear()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clear()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 2

    .prologue
    .line 874
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 875
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 877
    return-object p0
.end method

.method public clearCount()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3

    .prologue
    .line 961
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 962
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 964
    return-object p0
.end method

.method public clearDuration()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3

    .prologue
    .line 916
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 917
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 919
    return-object p0
.end method

.method public clearLabel()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 2

    .prologue
    .line 940
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 941
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 943
    return-object p0
.end method

.method public clearPosition()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3

    .prologue
    .line 895
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 896
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 898
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3

    .prologue
    .line 982
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 983
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->timestamp_:J

    .line 985
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3

    .prologue
    .line 759
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->create()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

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
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->clone()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method

.method public getCount()J
    .registers 3

    .prologue
    .line 952
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->count_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2

    .prologue
    .line 763
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 907
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    return-wide v0
.end method

.method public getLabel()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 886
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->position_:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 973
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 859
    iget v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 949
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 904
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 925
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    .line 883
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 970
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

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
    .line 830
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->hasAction()Z

    move-result v0

    if-nez v0, :cond_8

    .line 832
    const/4 v0, 0x0

    .line 834
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 807
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 826
    :cond_6
    :goto_6
    return-object p0

    .line 808
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 809
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 811
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 812
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setPosition(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 814
    :cond_21
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 815
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setDuration(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 817
    :cond_2e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 818
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getLabel()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 820
    :cond_3b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 821
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setCount(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 823
    :cond_48
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setTimestamp(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    const/4 v2, 0x0

    .line 843
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 848
    if-eqz v2, :cond_10

    .line 849
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 852
    :cond_10
    return-object p0

    .line 844
    :catch_11
    move-exception v1

    .line 845
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-object v2, v0

    .line 846
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 848
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 849
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

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
    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

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
    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 865
    if-nez p1, :cond_8

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 869
    iput-object p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 871
    return-object p0
.end method

.method public setCount(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 955
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 956
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->count_:J

    .line 958
    return-object p0
.end method

.method public setDuration(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 910
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 911
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->duration_:J

    .line 913
    return-object p0
.end method

.method public setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 931
    if-nez p1, :cond_8

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 935
    iput-object p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 937
    return-object p0
.end method

.method public setPosition(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 889
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 890
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->position_:J

    .line 892
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 976
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->bitField0_:I

    .line 977
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->timestamp_:J

    .line 979
    return-object p0
.end method
