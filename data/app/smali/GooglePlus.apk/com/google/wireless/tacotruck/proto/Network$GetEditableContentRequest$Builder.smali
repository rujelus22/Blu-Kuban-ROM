.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53114
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 53224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53115
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->maybeForceBuilderInitialization()V

    .line 53116
    return-void
.end method

.method static synthetic access$74800()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 1

    .prologue
    .line 53109
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 1

    .prologue
    .line 53121
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 53119
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    .registers 3

    .prologue
    .line 53142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    .line 53143
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 53144
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 53146
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    .registers 6

    .prologue
    .line 53160
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 53161
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53162
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 53163
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 53164
    or-int/lit8 v2, v2, 0x1

    .line 53166
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->access$75002(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53167
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 53168
    or-int/lit8 v2, v2, 0x2

    .line 53170
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->access$75102(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53171
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->access$75202(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;I)I

    .line 53172
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2

    .prologue
    .line 53125
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 53126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53129
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53130
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2

    .prologue
    .line 53248
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53249
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53251
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 2

    .prologue
    .line 53284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53285
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53287
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 3

    .prologue
    .line 53134
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

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
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53229
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53230
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 53231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 53232
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53235
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

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53265
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53266
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 53267
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 53268
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53271
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;
    .registers 2

    .prologue
    .line 53138
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53226
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 53262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 53187
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
    .line 53109
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53109
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

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
    .line 53109
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 53196
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 53201
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53203
    :sswitch_d
    return-object p0

    .line 53208
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 53213
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 53196
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 53176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 53183
    :cond_6
    :goto_6
    return-object p0

    .line 53177
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53178
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    .line 53180
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53181
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53239
    if-nez p1, :cond_8

    .line 53240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53242
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53243
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 53245
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53275
    if-nez p1, :cond_8

    .line 53276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53278
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->bitField0_:I

    .line 53279
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 53281
    return-object p0
.end method
