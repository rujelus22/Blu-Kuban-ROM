.class public final Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16235
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16236
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->maybeForceBuilderInitialization()V

    .line 16237
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 16242
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16240
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 6

    .prologue
    .line 16279
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 16280
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    .line 16281
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16282
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16283
    or-int/lit8 v2, v2, 0x1

    .line 16285
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->access$21602(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;J)J

    .line 16286
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->access$21702(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;I)I

    .line 16287
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 16246
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    .line 16248
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    .line 16249
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 16345
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    .line 16346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    .line 16348
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 16253
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

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
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 16336
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16230
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 2

    .prologue
    .line 16257
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16333
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

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
    .line 16230
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

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
    .line 16230
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 16308
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 16313
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16315
    :sswitch_d
    return-object p0

    .line 16320
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    .line 16321
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    goto :goto_0

    .line 16308
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16291
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16295
    :cond_6
    :goto_6
    return-object p0

    .line 16292
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16293
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16339
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->bitField0_:I

    .line 16340
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->albumId_:J

    .line 16342
    return-object p0
.end method
