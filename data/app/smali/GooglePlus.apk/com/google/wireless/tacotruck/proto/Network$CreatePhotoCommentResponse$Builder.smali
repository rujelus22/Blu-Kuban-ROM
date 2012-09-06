.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21963
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22063
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 21964
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->maybeForceBuilderInitialization()V

    .line 21965
    return-void
.end method

.method static synthetic access$29700()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 1

    .prologue
    .line 21958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 1

    .prologue
    .line 21970
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21968
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    .registers 3

    .prologue
    .line 21989
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    .line 21990
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21991
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21993
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    .registers 6

    .prologue
    .line 22007
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 22008
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 22009
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22010
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22011
    or-int/lit8 v2, v2, 0x1

    .line 22013
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->access$29902(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 22014
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->access$30002(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;I)I

    .line 22015
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 2

    .prologue
    .line 21974
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21975
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 21976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 21977
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 2

    .prologue
    .line 22099
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 22101
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 22102
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 3

    .prologue
    .line 21981
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

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
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 22068
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    .registers 2

    .prologue
    .line 21985
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22065
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 22027
    const/4 v0, 0x1

    return v0
.end method

.method public mergeComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 22089
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 22095
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 22096
    return-object p0

    .line 22092
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    goto :goto_1f
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
    .line 21958
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21958
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

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
    .line 21958
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 22036
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 22041
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22043
    :sswitch_d
    return-object p0

    .line 22048
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    .line 22049
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 22050
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->getComment()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    .line 22052
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22053
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->setComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    goto :goto_0

    .line 22036
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22019
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22023
    :cond_6
    :goto_6
    return-object p0

    .line 22020
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22021
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->getComment()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->mergeComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;

    goto :goto_6
.end method

.method public setComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 22081
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 22083
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 22084
    return-object p0
.end method

.method public setComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22071
    if-nez p1, :cond_8

    .line 22072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22074
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 22076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;->bitField0_:I

    .line 22077
    return-object p0
.end method
