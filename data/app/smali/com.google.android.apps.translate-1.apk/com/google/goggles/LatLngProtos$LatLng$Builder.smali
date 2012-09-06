.class public final Lcom/google/goggles/LatLngProtos$LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatLngProtos.java"

# interfaces
.implements Lcom/google/goggles/LatLngProtos$LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/LatLngProtos$LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/LatLngProtos$LatLng;",
        "Lcom/google/goggles/LatLngProtos$LatLng$Builder;",
        ">;",
        "Lcom/google/goggles/LatLngProtos$LatLngOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latDegrees_:D

.field private lngDegrees_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 198
    invoke-direct {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->maybeForceBuilderInitialization()V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->create()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 236
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 239
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 1

    .prologue
    .line 204
    new-instance v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    invoke-direct {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 227
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 229
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->build()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 243
    new-instance v2, Lcom/google/goggles/LatLngProtos$LatLng;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/LatLngProtos$LatLng;-><init>(Lcom/google/goggles/LatLngProtos$LatLng$Builder;Lcom/google/goggles/LatLngProtos$1;)V

    .line 244
    iget v3, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 245
    const/4 v1, 0x0

    .line 246
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 249
    :goto_e
    iget-wide v4, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    #setter for: Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D
    invoke-static {v2, v4, v5}, Lcom/google/goggles/LatLngProtos$LatLng;->access$302(Lcom/google/goggles/LatLngProtos$LatLng;D)D

    .line 250
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 251
    or-int/lit8 v0, v0, 0x2

    .line 253
    :cond_1a
    iget-wide v3, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    #setter for: Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D
    invoke-static {v2, v3, v4}, Lcom/google/goggles/LatLngProtos$LatLng;->access$402(Lcom/google/goggles/LatLngProtos$LatLng;D)D

    .line 254
    #setter for: Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/LatLngProtos$LatLng;->access$502(Lcom/google/goggles/LatLngProtos$LatLng;I)I

    .line 255
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 208
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 209
    iput-wide v1, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    .line 210
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 211
    iput-wide v1, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    .line 212
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clear()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clear()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLatDegrees()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 3

    .prologue
    .line 329
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    .line 332
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 3

    .prologue
    .line 350
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 351
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    .line 353
    return-object p0
.end method

.method public clone()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 3

    .prologue
    .line 217
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->create()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildPartial()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clone()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clone()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clone()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

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
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->clone()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->getDefaultInstanceForType()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->getDefaultInstanceForType()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getLatDegrees()D
    .registers 3

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .registers 3

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    return-wide v0
.end method

.method public hasLatDegrees()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 317
    iget v1, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLngDegrees()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->hasLatDegrees()Z

    move-result v1

    if-nez v1, :cond_8

    .line 278
    :cond_7
    :goto_7
    return v0

    .line 274
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 4
    .parameter

    .prologue
    .line 259
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 266
    :cond_6
    :goto_6
    return-object p0

    .line 260
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng;->hasLatDegrees()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 261
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng;->getLatDegrees()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->setLatDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    .line 263
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng;->hasLngDegrees()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng;->getLngDegrees()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->setLngDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 5
    .parameter
    .parameter
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
    sparse-switch v0, :sswitch_data_28

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :sswitch_d
    return-object p0

    .line 299
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 300
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    goto :goto_0

    .line 304
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 305
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    goto :goto_0

    .line 287
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
        0x11 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 192
    check-cast p1, Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-virtual {p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLatDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 4
    .parameter

    .prologue
    .line 323
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 324
    iput-wide p1, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->latDegrees_:D

    .line 326
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 4
    .parameter

    .prologue
    .line 344
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->bitField0_:I

    .line 345
    iput-wide p1, p0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->lngDegrees_:D

    .line 347
    return-object p0
.end method
