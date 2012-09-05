.class public final Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$CustomValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$CustomValue;",
        "Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private key_:Ljava/lang/Object;

.field private timestamp_:J

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4168
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->maybeForceBuilderInitialization()V

    .line 4169
    return-void
.end method

.method static synthetic access$5100()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 1

    .prologue
    .line 4162
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->create()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 1

    .prologue
    .line 4174
    new-instance v0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4172
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 3

    .prologue
    .line 4199
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    .line 4200
    .local v0, result:Lcom/google/wireless/webapps/Analytics$CustomValue;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4201
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4203
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 6

    .prologue
    .line 4217
    new-instance v1, Lcom/google/wireless/webapps/Analytics$CustomValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$CustomValue;-><init>(Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 4218
    .local v1, result:Lcom/google/wireless/webapps/Analytics$CustomValue;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4219
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4220
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4221
    or-int/lit8 v2, v2, 0x1

    .line 4223
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$CustomValue;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$CustomValue;->access$5302(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4224
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4225
    or-int/lit8 v2, v2, 0x2

    .line 4227
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$CustomValue;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$CustomValue;->access$5402(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4228
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4229
    or-int/lit8 v2, v2, 0x4

    .line 4231
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$CustomValue;->context_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$CustomValue;->access$5502(Lcom/google/wireless/webapps/Analytics$CustomValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4233
    or-int/lit8 v2, v2, 0x8

    .line 4235
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$CustomValue;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$CustomValue;->access$5602(Lcom/google/wireless/webapps/Analytics$CustomValue;J)J

    .line 4236
    #setter for: Lcom/google/wireless/webapps/Analytics$CustomValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$CustomValue;->access$5702(Lcom/google/wireless/webapps/Analytics$CustomValue;I)I

    .line 4237
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->clear()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->clear()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3

    .prologue
    .line 4178
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4180
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4182
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4184
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    .line 4186
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4187
    return-object p0
.end method

.method public clearContext()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 2

    .prologue
    .line 4401
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4402
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4404
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 2

    .prologue
    .line 4329
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4330
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4332
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3

    .prologue
    .line 4427
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4428
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    .line 4430
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 2

    .prologue
    .line 4365
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4366
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4368
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->clone()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->clone()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3

    .prologue
    .line 4191
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->create()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

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
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->clone()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4383
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4384
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4385
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4388
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
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 2

    .prologue
    .line 4195
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4311
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4313
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4316
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 4418
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4347
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4348
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4349
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4352
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

.method public hasContext()Z
    .registers 3

    .prologue
    .line 4379
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4307
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 4415
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    .line 4343
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

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
    .line 4162
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

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
    .line 4162
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4266
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4267
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 4272
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4274
    :sswitch_d
    return-object p0

    .line 4279
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4280
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 4284
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4285
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4289
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4290
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    goto :goto_0

    .line 4294
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4295
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    goto :goto_0

    .line 4267
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4241
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4254
    :cond_6
    :goto_6
    return-object p0

    .line 4242
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4243
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    .line 4245
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4246
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    .line 4248
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4249
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setContext(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    .line 4251
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4252
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$CustomValue;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setTimestamp(J)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    goto :goto_6
.end method

.method public setContext(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4392
    if-nez p1, :cond_8

    .line 4393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4395
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4396
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->context_:Ljava/lang/Object;

    .line 4398
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4320
    if-nez p1, :cond_8

    .line 4321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4323
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4324
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->key_:Ljava/lang/Object;

    .line 4326
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4421
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4422
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->timestamp_:J

    .line 4424
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4356
    if-nez p1, :cond_8

    .line 4357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4359
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->bitField0_:I

    .line 4360
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->value_:Ljava/lang/Object;

    .line 4362
    return-object p0
.end method
