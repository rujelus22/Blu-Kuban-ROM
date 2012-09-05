.class public final Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Point;",
        "Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PointOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22181
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22182
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->maybeForceBuilderInitialization()V

    .line 22183
    return-void
.end method

.method static synthetic access$29900()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 22176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 1

    .prologue
    .line 22188
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22186
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 3

    .prologue
    .line 22209
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    .line 22210
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22211
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22213
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 6

    .prologue
    .line 22227
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Point;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 22228
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Point;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22229
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22230
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22231
    or-int/lit8 v2, v2, 0x1

    .line 22233
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->latitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$30102(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 22234
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22235
    or-int/lit8 v2, v2, 0x2

    .line 22237
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->longitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$30202(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 22238
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Point;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point;->access$30302(Lcom/google/wireless/tacotruck/proto/Data$Point;I)I

    .line 22239
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22192
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22193
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 22194
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22195
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 22196
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22197
    return-object p0
.end method

.method public clearLatitudeE7()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 22313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22314
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 22316
    return-object p0
.end method

.method public clearLongitudeE7()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 2

    .prologue
    .line 22334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22335
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 22337
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3

    .prologue
    .line 22201
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

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
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 22205
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 22304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 22325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    return v0
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22301
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitudeE7()Z
    .registers 3

    .prologue
    .line 22322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

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
    .line 22176
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

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
    .line 22176
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22271
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 22276
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22278
    :sswitch_d
    return-object p0

    .line 22283
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22284
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    goto :goto_0

    .line 22288
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    goto :goto_0

    .line 22271
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22243
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22250
    :cond_6
    :goto_6
    return-object p0

    .line 22244
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22245
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 22247
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22248
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    goto :goto_6
.end method

.method public setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22307
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22308
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->latitudeE7_:I

    .line 22310
    return-object p0
.end method

.method public setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22328
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->bitField0_:I

    .line 22329
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->longitudeE7_:I

    .line 22331
    return-object p0
.end method
