.class public final Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$A2aDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$A2aData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$A2aData;",
        "Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/A2a$A2aDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 280
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 175
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->maybeForceBuilderInitialization()V

    .line 176
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 1

    .prologue
    .line 169
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 1

    .prologue
    .line 181
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/A2a$A2aData;
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    .line 201
    .local v0, result:Lcom/google/apps/tacotown/proto/A2a$A2aData;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 202
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 204
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/A2a$A2aData;
    .registers 6

    .prologue
    .line 218
    new-instance v1, Lcom/google/apps/tacotown/proto/A2a$A2aData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/A2a$A2aData;-><init>(Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V

    .line 219
    .local v1, result:Lcom/google/apps/tacotown/proto/A2a$A2aData;
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    .line 220
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 221
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 222
    or-int/lit8 v2, v2, 0x1

    .line 224
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->access$302(Lcom/google/apps/tacotown/proto/A2a$A2aData;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 225
    #setter for: Lcom/google/apps/tacotown/proto/A2a$A2aData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->access$402(Lcom/google/apps/tacotown/proto/A2a$A2aData;I)I

    .line 226
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 186
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 187
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 3

    .prologue
    .line 192
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

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
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$A2aData;
    .registers 2

    .prologue
    .line 196
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public hasHangoutData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 282
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

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
    .line 238
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hasHangoutData()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 241
    const/4 v0, 0x0

    .line 244
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 230
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 234
    :cond_6
    :goto_6
    return-object p0

    .line 231
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hasHangoutData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 253
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 258
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    :sswitch_d
    return-object p0

    .line 265
    :sswitch_e
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    .line 266
    .local v0, subBuilder:Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hasHangoutData()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 267
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    .line 269
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 270
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    goto :goto_0

    .line 253
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
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
    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, Lcom/google/apps/tacotown/proto/A2a$A2aData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

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
    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 304
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 306
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 312
    :goto_1f
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    .line 313
    return-object p0

    .line 309
    :cond_26
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    goto :goto_1f
.end method

.method public setHangoutData(Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 288
    if-nez p1, :cond_8

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_8
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 293
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->bitField0_:I

    .line 294
    return-object p0
.end method
