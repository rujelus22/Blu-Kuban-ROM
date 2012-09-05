.class public final Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mediaTag_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6149
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->maybeForceBuilderInitialization()V

    .line 6150
    return-void
.end method

.method static synthetic access$7500()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6143
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6155
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6153
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 3

    .prologue
    .line 6174
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    .line 6175
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6176
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6178
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 6

    .prologue
    .line 6192
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 6193
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6194
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6195
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6196
    or-int/lit8 v2, v2, 0x1

    .line 6198
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$7702(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J

    .line 6199
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->access$7802(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;I)I

    .line 6200
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6159
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6162
    return-object p0
.end method

.method public clearMediaTag()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6261
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 3

    .prologue
    .line 6166
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

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
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 6170
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 6249
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    return-wide v0
.end method

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6246
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

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
    .line 6143
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

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
    .line 6143
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6221
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 6226
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6228
    :sswitch_d
    return-object p0

    .line 6233
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6234
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    goto :goto_0

    .line 6221
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6204
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6208
    :cond_6
    :goto_6
    return-object p0

    .line 6205
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->hasMediaTag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6206
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    goto :goto_6
.end method

.method public setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6252
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->bitField0_:I

    .line 6253
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mediaTag_:J

    .line 6255
    return-object p0
.end method
