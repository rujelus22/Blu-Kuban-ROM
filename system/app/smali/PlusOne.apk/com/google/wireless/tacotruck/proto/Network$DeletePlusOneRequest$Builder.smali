.class public final Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private plusoneId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24344
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24145
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->maybeForceBuilderInitialization()V

    .line 24146
    return-void
.end method

.method static synthetic access$33000()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24139
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 24151
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24149
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 3

    .prologue
    .line 24174
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    .line 24175
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24176
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24178
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 6

    .prologue
    .line 24192
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 24193
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24194
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24195
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24196
    or-int/lit8 v2, v2, 0x1

    .line 24198
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->plusoneId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$33202(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24199
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24200
    or-int/lit8 v2, v2, 0x2

    .line 24202
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$33302(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24203
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 24204
    or-int/lit8 v2, v2, 0x4

    .line 24206
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$33402(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24207
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->access$33502(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;I)I

    .line 24208
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24160
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24162
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24333
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24335
    return-object p0
.end method

.method public clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24297
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24299
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 24361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24362
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24364
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3

    .prologue
    .line 24166
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

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
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24313
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24314
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24316
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24319
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
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;
    .registers 2

    .prologue
    .line 24170
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24278
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24279
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24280
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24283
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2

    .prologue
    .line 24349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 24310
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

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

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24274
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

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
    .line 24139
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

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
    .line 24139
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24234
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24235
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 24240
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24242
    :sswitch_d
    return-object p0

    .line 24247
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24248
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    goto :goto_0

    .line 24252
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24253
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 24257
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24258
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    .line 24259
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    if-eqz v2, :cond_0

    .line 24260
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24261
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_0

    .line 24235
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 24212
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24222
    :cond_6
    :goto_6
    return-object p0

    .line 24213
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24214
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 24216
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24217
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 24219
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24220
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24323
    if-nez p1, :cond_8

    .line 24324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24326
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24327
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 24329
    return-object p0
.end method

.method public setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24287
    if-nez p1, :cond_8

    .line 24288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24290
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24291
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 24293
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24352
    if-nez p1, :cond_8

    .line 24353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24355
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->bitField0_:I

    .line 24356
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 24358
    return-object p0
.end method
