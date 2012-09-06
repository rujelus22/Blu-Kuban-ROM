.class public final Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Phone;",
        "Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhoneOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

.field private needsVerification_:Z

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44149
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44277
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    .line 44150
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->maybeForceBuilderInitialization()V

    .line 44151
    return-void
.end method

.method static synthetic access$59400()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 1

    .prologue
    .line 44144
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 1

    .prologue
    .line 44156
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44154
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 3

    .prologue
    .line 44179
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    .line 44180
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44181
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44183
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 6

    .prologue
    .line 44197
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Phone;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Phone;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 44198
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44199
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44200
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44201
    or-int/lit8 v2, v2, 0x1

    .line 44203
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Phone;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->access$59602(Lcom/google/wireless/tacotruck/proto/Data$Phone;Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44204
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 44205
    or-int/lit8 v2, v2, 0x2

    .line 44207
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Phone;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->access$59702(Lcom/google/wireless/tacotruck/proto/Data$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44208
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 44209
    or-int/lit8 v2, v2, 0x4

    .line 44211
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Phone;->needsVerification_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->access$59802(Lcom/google/wireless/tacotruck/proto/Data$Phone;Z)Z

    .line 44212
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Phone;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->access$59902(Lcom/google/wireless/tacotruck/proto/Data$Phone;I)I

    .line 44213
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44160
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44161
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44162
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    .line 44166
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44167
    return-object p0
.end method

.method public clearCountry()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44315
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44316
    return-object p0
.end method

.method public clearNeedsVerification()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    .line 44373
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 2

    .prologue
    .line 44344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44345
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44347
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3

    .prologue
    .line 44171
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

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
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 44282
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44144
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 44175
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getNeedsVerification()Z
    .registers 2

    .prologue
    .line 44361
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44325
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44326
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44327
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44328
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44331
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

.method public hasCountry()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44279
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNeedsVerification()Z
    .registers 3

    .prologue
    .line 44358
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 44322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

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
    .line 44231
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 44301
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 44303
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44309
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44310
    return-object p0

    .line 44306
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    goto :goto_1f
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
    .line 44144
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44144
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

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
    .line 44144
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 44240
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 44245
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44247
    :sswitch_d
    return-object p0

    .line 44252
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    .line 44253
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->hasCountry()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 44254
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->getCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    .line 44256
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 44257
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->setCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    goto :goto_0

    .line 44261
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 44266
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    goto :goto_0

    .line 44240
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44217
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44227
    :cond_6
    :goto_6
    return-object p0

    .line 44218
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44219
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 44221
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 44222
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 44224
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->hasNeedsVerification()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44225
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getNeedsVerification()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->setNeedsVerification(Z)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    goto :goto_6
.end method

.method public setCountry(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 44295
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44297
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44298
    return-object p0
.end method

.method public setCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44285
    if-nez p1, :cond_8

    .line 44286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44288
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->country_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 44290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44291
    return-object p0
.end method

.method public setNeedsVerification(Z)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44364
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44365
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->needsVerification_:Z

    .line 44367
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44335
    if-nez p1, :cond_8

    .line 44336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44338
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->bitField0_:I

    .line 44339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 44341
    return-object p0
.end method
