.class public final Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$InviteeSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;",
        "Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$InviteeSummaryOrBuilder;"
    }
.end annotation


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

.field private rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field private setByViewer_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4201
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 4246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    .line 4051
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->maybeForceBuilderInitialization()V

    .line 4052
    return-void
.end method

.method static synthetic access$4800()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 1

    .prologue
    .line 4045
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 1

    .prologue
    .line 4057
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInviteeIsMutable()V
    .registers 3

    .prologue
    .line 4249
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 4250
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    .line 4251
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4253
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4055
    return-void
.end method


# virtual methods
.method public addInvitee(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4282
    if-nez p1, :cond_8

    .line 4283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4285
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->ensureInviteeIsMutable()V

    .line 4286
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4288
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    .registers 3

    .prologue
    .line 4082
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    .line 4083
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4084
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4086
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    .registers 6

    .prologue
    .line 4100
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;-><init>(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 4101
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4102
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4103
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4104
    or-int/lit8 v2, v2, 0x1

    .line 4106
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5002(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 4107
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4108
    or-int/lit8 v2, v2, 0x2

    .line 4110
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->count_:I

    #setter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->count_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5102(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;I)I

    .line 4111
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 4112
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    .line 4113
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4115
    :cond_36
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5202(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Ljava/util/List;)Ljava/util/List;

    .line 4116
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 4117
    or-int/lit8 v2, v2, 0x4

    .line 4119
    :cond_43
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setByViewer_:Z

    #setter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->setByViewer_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5302(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;Z)Z

    .line 4120
    #setter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5402(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;I)I

    .line 4121
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4061
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4062
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 4063
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4064
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->count_:I

    .line 4065
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    .line 4067
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4068
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setByViewer_:Z

    .line 4069
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4070
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3

    .prologue
    .line 4074
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

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
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4045
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;
    .registers 2

    .prologue
    .line 4078
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4149
    const/4 v0, 0x1

    return v0
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
    .line 4045
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4045
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

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
    .line 4045
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4158
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 4163
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4165
    :sswitch_d
    return-object p0

    .line 4170
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4171
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v3

    .line 4172
    .local v3, value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    if-eqz v3, :cond_0

    .line 4173
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4174
    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_0

    .line 4179
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    :sswitch_21
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->count_:I

    goto :goto_0

    .line 4184
    :sswitch_2e
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v1

    .line 4185
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4186
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->addInvitee(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    goto :goto_0

    .line 4190
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    :sswitch_3d
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4191
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setByViewer_:Z

    goto :goto_0

    .line 4158
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4125
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4145
    :cond_6
    :goto_6
    return-object p0

    .line 4126
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasRsvpType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4127
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setRsvpType(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    .line 4129
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4130
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setCount(I)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    .line 4132
    :cond_21
    #getter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5200(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 4133
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4134
    #getter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5200(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    .line 4135
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4142
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->hasSetByViewer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4143
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->getSetByViewer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setSetByViewer(Z)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;

    goto :goto_6

    .line 4137
    :cond_4d
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->ensureInviteeIsMutable()V

    .line 4138
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->invitee_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->invitee_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;->access$5200(Lcom/google/protos/embeds/PlusEventItem$InviteeSummary;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public setCount(I)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4233
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4234
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->count_:I

    .line 4236
    return-object p0
.end method

.method public setRsvpType(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4209
    if-nez p1, :cond_8

    .line 4210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4212
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4213
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 4215
    return-object p0
.end method

.method public setSetByViewer(Z)Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4343
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->bitField0_:I

    .line 4344
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$InviteeSummary$Builder;->setByViewer_:Z

    .line 4346
    return-object p0
.end method
