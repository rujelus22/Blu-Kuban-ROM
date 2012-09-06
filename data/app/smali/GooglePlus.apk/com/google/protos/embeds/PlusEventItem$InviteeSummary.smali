.class public final Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$InviteeSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InviteeSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private invitee_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$Invitee;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field private setByViewer_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4359
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    .line 4360
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->initFields()V

    .line 4361
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3841
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3912
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedIsInitialized:B

    .line 3938
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedSerializedSize:I

    .line 3842
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;-><init>(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3843
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3912
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedIsInitialized:B

    .line 3938
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedSerializedSize:I

    .line 3843
    return-void
.end method

.method static synthetic access$5002(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I

    return p1
.end method

.method static synthetic access$5200(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3836
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    .registers 1

    .prologue
    .line 3847
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3907
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3908
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I

    .line 3909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    .line 3910
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z

    .line 3911
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 1

    .prologue
    .line 4038
    #calls: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->access$4800()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4041
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 3872
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3836
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    .registers 2

    .prologue
    .line 3851
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    return-object v0
.end method

.method public getInviteeCount()I
    .registers 2

    .prologue
    .line 3886
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInviteeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$Invitee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3879
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    return-object v0
.end method

.method public getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3940
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedSerializedSize:I

    .line 3941
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 3961
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 3943
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 3944
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 3945
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v3}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3948
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 3949
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3952
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 3953
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3952
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 3956
    :cond_43
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 3957
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3960
    :cond_50
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedSerializedSize:I

    move v2, v1

    .line 3961
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSetByViewer()Z
    .registers 2

    .prologue
    .line 3903
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z

    return v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 3869
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

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

.method public hasRsvpType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3859
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSetByViewer()Z
    .registers 3

    .prologue
    .line 3900
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

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
    const/4 v1, 0x1

    .line 3914
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedIsInitialized:B

    .line 3915
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3918
    :goto_8
    return v1

    .line 3915
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3917
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3836
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 2

    .prologue
    .line 4039
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3836
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 2

    .prologue
    .line 4043
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

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
    .line 3968
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

    .line 3923
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getSerializedSize()I

    .line 3924
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 3925
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3927
    :cond_15
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 3928
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3930
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 3931
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3930
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 3933
    :cond_38
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 3934
    iget-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3936
    :cond_43
    return-void
.end method
