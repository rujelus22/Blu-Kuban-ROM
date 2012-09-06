.class public final Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$TimeRange;",
        "Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$TimeRangeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private end_:J

.field private start_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3214
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3215
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->maybeForceBuilderInitialization()V

    .line 3216
    return-void
.end method

.method static synthetic access$4100()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 1

    .prologue
    .line 3209
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 1

    .prologue
    .line 3221
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3219
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 3

    .prologue
    .line 3242
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    .line 3243
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3244
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3246
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 6

    .prologue
    .line 3260
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;-><init>(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 3261
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3262
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3263
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3264
    or-int/lit8 v2, v2, 0x1

    .line 3266
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->access$4302(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;J)J

    .line 3267
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3268
    or-int/lit8 v2, v2, 0x2

    .line 3270
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->access$4402(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;J)J

    .line 3271
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->access$4502(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;I)I

    .line 3272
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 3225
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3226
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    .line 3227
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3228
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    .line 3229
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3230
    return-object p0
.end method

.method public clearEnd()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 3

    .prologue
    .line 3359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    .line 3362
    return-object p0
.end method

.method public clearStart()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 3

    .prologue
    .line 3338
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    .line 3341
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 3

    .prologue
    .line 3234
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

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
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 3238
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .prologue
    .line 3350
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    return-wide v0
.end method

.method public getStart()J
    .registers 3

    .prologue
    .line 3329
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    return-wide v0
.end method

.method public hasEnd()Z
    .registers 3

    .prologue
    .line 3347
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3326
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

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
    .line 3287
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
    .line 3209
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3209
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

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
    .line 3209
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3295
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3296
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 3301
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3303
    :sswitch_d
    return-object p0

    .line 3308
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3309
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    goto :goto_0

    .line 3313
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3314
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    goto :goto_0

    .line 3296
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3276
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3283
    :cond_6
    :goto_6
    return-object p0

    .line 3277
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3278
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getStart()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->setStart(J)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    .line 3280
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3281
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getEnd()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->setEnd(J)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    goto :goto_6
.end method

.method public setEnd(J)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3353
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3354
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->end_:J

    .line 3356
    return-object p0
.end method

.method public setStart(J)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3332
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->bitField0_:I

    .line 3333
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->start_:J

    .line 3335
    return-object p0
.end method
