.class public final Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$LocationPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$LocationPoint;",
        "Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$LocationPointOrBuilder;"
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
    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 198
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->maybeForceBuilderInitialization()V

    .line 199
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 1

    .prologue
    .line 204
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    .line 226
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 227
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 229
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 6

    .prologue
    .line 243
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;-><init>(Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 244
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 245
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 246
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 247
    or-int/lit8 v2, v2, 0x1

    .line 249
    :cond_10
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    #setter for: Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->latitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->access$302(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I

    .line 250
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 251
    or-int/lit8 v2, v2, 0x2

    .line 253
    :cond_1c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    #setter for: Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->longitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->access$402(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I

    .line 254
    #setter for: Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->access$502(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;I)I

    .line 255
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 209
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    .line 210
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 211
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    .line 212
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public clearLatitudeE7()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    .line 332
    return-object p0
.end method

.method public clearLongitudeE7()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 2

    .prologue
    .line 350
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    .line 353
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 3

    .prologue
    .line 217
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

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
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    return v0
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 317
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

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
    .line 338
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

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
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

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
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 287
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    :sswitch_d
    return-object p0

    .line 299
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 300
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    goto :goto_0

    .line 304
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 305
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    goto :goto_0

    .line 287
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xd -> :sswitch_e
        0x15 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 259
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 266
    :cond_6
    :goto_6
    return-object p0

    .line 260
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 261
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getLatitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->setLatitudeE7(I)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    .line 263
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getLongitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->setLongitudeE7(I)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    goto :goto_6
.end method

.method public setLatitudeE7(I)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 323
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 324
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->latitudeE7_:I

    .line 326
    return-object p0
.end method

.method public setLongitudeE7(I)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 344
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->bitField0_:I

    .line 345
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->longitudeE7_:I

    .line 347
    return-object p0
.end method
