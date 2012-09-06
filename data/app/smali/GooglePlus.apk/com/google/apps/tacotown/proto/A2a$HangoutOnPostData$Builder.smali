.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isActive_:Z

.field private roomId_:Ljava/lang/Object;

.field private totalOtherParticipantsCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3876
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->roomId_:Ljava/lang/Object;

    .line 3877
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->maybeForceBuilderInitialization()V

    .line 3878
    return-void
.end method

.method static synthetic access$4600()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 1

    .prologue
    .line 3871
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 1

    .prologue
    .line 3883
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3881
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    .registers 3

    .prologue
    .line 3906
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    .line 3907
    .local v0, result:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3908
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3910
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    .registers 6

    .prologue
    .line 3924
    new-instance v1, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V

    .line 3925
    .local v1, result:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3926
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3927
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3928
    or-int/lit8 v2, v2, 0x1

    .line 3930
    :cond_10
    iget-boolean v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->isActive_:Z

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->access$4802(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;Z)Z

    .line 3931
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3932
    or-int/lit8 v2, v2, 0x2

    .line 3934
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->roomId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->access$4902(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3936
    or-int/lit8 v2, v2, 0x4

    .line 3938
    :cond_28
    iget v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->totalOtherParticipantsCount_:I

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->access$5002(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;I)I

    .line 3939
    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->access$5102(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;I)I

    .line 3940
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3887
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3888
    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->isActive_:Z

    .line 3889
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->roomId_:Ljava/lang/Object;

    .line 3891
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3892
    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->totalOtherParticipantsCount_:I

    .line 3893
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3894
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3

    .prologue
    .line 3898
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

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
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    .registers 2

    .prologue
    .line 3902
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3958
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3944
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3954
    :cond_6
    :goto_6
    return-object p0

    .line 3945
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3946
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getIsActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->setIsActive(Z)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    .line 3948
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->hasRoomId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3949
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->setRoomId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    .line 3951
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->hasTotalOtherParticipantsCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3952
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getTotalOtherParticipantsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->setTotalOtherParticipantsCount(I)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3966
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3967
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 3972
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3974
    :sswitch_d
    return-object p0

    .line 3979
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->isActive_:Z

    goto :goto_0

    .line 3984
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3985
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->roomId_:Ljava/lang/Object;

    goto :goto_0

    .line 3989
    :sswitch_28
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 3990
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->totalOtherParticipantsCount_:I

    goto :goto_0

    .line 3967
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
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
    .line 3871
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3871
    check-cast p1, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

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
    .line 3871
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsActive(Z)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4008
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 4009
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->isActive_:Z

    .line 4011
    return-object p0
.end method

.method public setRoomId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4036
    if-nez p1, :cond_8

    .line 4037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4039
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 4040
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->roomId_:Ljava/lang/Object;

    .line 4042
    return-object p0
.end method

.method public setTotalOtherParticipantsCount(I)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4065
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->bitField0_:I

    .line 4066
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->totalOtherParticipantsCount_:I

    .line 4068
    return-object p0
.end method
