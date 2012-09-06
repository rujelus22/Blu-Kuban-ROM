.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRatingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;",
        ">;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRatingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fiveStarRating_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1222
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->maybeForceBuilderInitialization()V

    .line 1223
    return-void
.end method

.method static synthetic access$1100(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 1

    .prologue
    .line 1216
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1258
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1261
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 1

    .prologue
    .line 1228
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1226
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 3

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1249
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1251
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1265
    new-instance v2, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V

    .line 1266
    iget v3, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    .line 1267
    const/4 v1, 0x0

    .line 1268
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 1271
    :goto_e
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->fiveStarRating_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->access$1402(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;I)I

    .line 1272
    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->access$1502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;I)I

    .line 1273
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 2

    .prologue
    .line 1232
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    .line 1234
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    .line 1235
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFiveStarRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 2

    .prologue
    .line 1331
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    .line 1334
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 3

    .prologue
    .line 1239
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

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
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2

    .prologue
    .line 1243
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    return-object v0
.end method

.method public getFiveStarRating()I
    .registers 2

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    return v0
.end method

.method public hasFiveStarRating()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1319
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

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
    .line 1285
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1277
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1281
    :cond_6
    :goto_6
    return-object p0

    .line 1278
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->hasFiveStarRating()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1279
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getFiveStarRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->setFiveStarRating(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1294
    sparse-switch v0, :sswitch_data_1c

    .line 1299
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    :sswitch_d
    return-object p0

    .line 1306
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    .line 1307
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    goto :goto_0

    .line 1294
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1216
    check-cast p1, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

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
    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFiveStarRating(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1325
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->bitField0_:I

    .line 1326
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating$Builder;->fiveStarRating_:I

    .line 1328
    return-object p0
.end method
