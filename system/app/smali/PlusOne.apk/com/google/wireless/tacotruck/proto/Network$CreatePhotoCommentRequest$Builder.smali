.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private comment_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20937
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 20938
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->maybeForceBuilderInitialization()V

    .line 20939
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 1

    .prologue
    .line 20944
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20942
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 6

    .prologue
    .line 20987
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 20988
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 20989
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20990
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20991
    or-int/lit8 v2, v2, 0x1

    .line 20993
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$28402(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J

    .line 20994
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20995
    or-int/lit8 v2, v2, 0x2

    .line 20997
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$28502(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J

    .line 20998
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 20999
    or-int/lit8 v2, v2, 0x4

    .line 21001
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$28602(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21002
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 21003
    or-int/lit8 v2, v2, 0x8

    .line 21005
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$28702(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21006
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->access$28802(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;I)I

    .line 21007
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 20948
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20949
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 20950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 20951
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 20952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 20953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 20954
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 20955
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 20956
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 20957
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21142
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21144
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21178
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21180
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 21110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 21113
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 21089
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21090
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 21092
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3

    .prologue
    .line 20961
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

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
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21122
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21123
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21124
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21125
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21128
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
    .line 21158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21159
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21161
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21164
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
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20932
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 2

    .prologue
    .line 20965
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 21101
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 21080
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    .line 21119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 21155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 21098
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21077
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 20932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

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
    .line 20932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21036
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 21037
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 21042
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21044
    :sswitch_d
    return-object p0

    .line 21049
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21050
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    goto :goto_0

    .line 21054
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 21059
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    goto :goto_0

    .line 21064
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21065
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 21037
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 21011
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21024
    :cond_6
    :goto_6
    return-object p0

    .line 21012
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21013
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21015
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21016
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21018
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21019
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setComment(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    .line 21021
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21022
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    goto :goto_6
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21132
    if-nez p1, :cond_8

    .line 21133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21135
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21136
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->comment_:Ljava/lang/Object;

    .line 21138
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21168
    if-nez p1, :cond_8

    .line 21169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21171
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21172
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->commentId_:Ljava/lang/Object;

    .line 21174
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21105
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->ownerGaiaId_:J

    .line 21107
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21083
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->bitField0_:I

    .line 21084
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->photoId_:J

    .line 21086
    return-object p0
.end method
