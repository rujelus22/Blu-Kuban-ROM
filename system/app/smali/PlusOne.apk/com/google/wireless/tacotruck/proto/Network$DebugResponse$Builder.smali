.class public final Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DebugResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private debugInfoHtml_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52248
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 52344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52249
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->maybeForceBuilderInitialization()V

    .line 52250
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 1

    .prologue
    .line 52255
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52253
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
    .registers 6

    .prologue
    .line 52292
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 52293
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    .line 52294
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52295
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 52296
    or-int/lit8 v2, v2, 0x1

    .line 52298
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->access$74002(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52299
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->access$74102(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;I)I

    .line 52300
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 2

    .prologue
    .line 52259
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52261
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    .line 52262
    return-object p0
.end method

.method public clearDebugInfoHtml()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 2

    .prologue
    .line 52368
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    .line 52369
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDebugInfoHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52371
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 3

    .prologue
    .line 52266
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

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
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDebugInfoHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52350
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 52351
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 52352
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52355
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
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52243
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
    .registers 2

    .prologue
    .line 52270
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasDebugInfoHtml()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52346
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

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
    .line 52243
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

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
    .line 52243
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 52321
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 52326
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52328
    :sswitch_d
    return-object p0

    .line 52333
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    .line 52334
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 52321
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 52304
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 52308
    :cond_6
    :goto_6
    return-object p0

    .line 52305
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->hasDebugInfoHtml()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52306
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDebugInfoHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->setDebugInfoHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;

    goto :goto_6
.end method

.method public setDebugInfoHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 52359
    if-nez p1, :cond_8

    .line 52360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52362
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->bitField0_:I

    .line 52363
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;->debugInfoHtml_:Ljava/lang/Object;

    .line 52365
    return-object p0
.end method
