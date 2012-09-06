.class public final Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Country;",
        "Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43148
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->maybeForceBuilderInitialization()V

    .line 43149
    return-void
.end method

.method static synthetic access$58000()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 43142
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 1

    .prologue
    .line 43154
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43152
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 3

    .prologue
    .line 43175
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    .line 43176
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Country;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43177
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43179
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 6

    .prologue
    .line 43193
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Country;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 43194
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Country;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43195
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43196
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43197
    or-int/lit8 v2, v2, 0x1

    .line 43199
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->code_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$58202(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43200
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43201
    or-int/lit8 v2, v2, 0x2

    .line 43203
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$58302(Lcom/google/wireless/tacotruck/proto/Data$Country;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43204
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Country;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Country;->access$58402(Lcom/google/wireless/tacotruck/proto/Data$Country;I)I

    .line 43205
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 43158
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43160
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43162
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43163
    return-object p0
.end method

.method public clearCode()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 43281
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43282
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43284
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 2

    .prologue
    .line 43317
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43318
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43320
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3

    .prologue
    .line 43167
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

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
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43262
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43263
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43264
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43265
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43268
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
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 43171
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43298
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43299
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43300
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43301
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43304
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

.method public hasCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43259
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 43295
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 43220
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
    .line 43142
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43142
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Country;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

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
    .line 43142
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 43229
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 43234
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43236
    :sswitch_d
    return-object p0

    .line 43241
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43242
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    goto :goto_0

    .line 43246
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 43229
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 43209
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43216
    :cond_6
    :goto_6
    return-object p0

    .line 43210
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43211
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->setCode(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    .line 43213
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43214
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    goto :goto_6
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43272
    if-nez p1, :cond_8

    .line 43273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43275
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43276
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->code_:Ljava/lang/Object;

    .line 43278
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43308
    if-nez p1, :cond_8

    .line 43309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43311
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->bitField0_:I

    .line 43312
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->name_:Ljava/lang/Object;

    .line 43314
    return-object p0
.end method
