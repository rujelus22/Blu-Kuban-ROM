.class public final Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private phoneNumberFormatted_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verified_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29392
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29512
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29393
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 29394
    return-void
.end method

.method static synthetic access$35000()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 29387
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 29399
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29397
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3

    .prologue
    .line 29424
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    .line 29425
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29426
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29428
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 6

    .prologue
    .line 29432
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 29433
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29434
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29435
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29436
    or-int/lit8 v2, v2, 0x1

    .line 29438
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35202(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29439
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29440
    or-int/lit8 v2, v2, 0x2

    .line 29442
    :cond_1c
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->verified_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35302(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Z)Z

    .line 29443
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 29444
    or-int/lit8 v2, v2, 0x4

    .line 29446
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35402(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29447
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 29448
    or-int/lit8 v2, v2, 0x8

    .line 29450
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35502(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29451
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35602(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;I)I

    .line 29452
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29404
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29405
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->verified_:Z

    .line 29407
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29409
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29411
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29412
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29612
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29613
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29615
    return-object p0
.end method

.method public clearPhoneNumberFormatted()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29665
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29666
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29668
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29548
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29550
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29551
    return-object p0
.end method

.method public clearVerified()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29569
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->verified_:Z

    .line 29572
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3

    .prologue
    .line 29416
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

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
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2

    .prologue
    .line 29420
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29387
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29581
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29582
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29583
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29584
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29587
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29592
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29593
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29594
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29596
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29599
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPhoneNumberFormatted()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29634
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29635
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29636
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29637
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29640
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

.method public getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29645
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29646
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29647
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29649
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29652
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 29517
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerified()Z
    .registers 2

    .prologue
    .line 29560
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->verified_:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 29578
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

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

.method public hasPhoneNumberFormatted()Z
    .registers 3

    .prologue
    .line 29631
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29514
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerified()Z
    .registers 3

    .prologue
    .line 29557
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

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

    .line 29477
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 29489
    :cond_7
    :goto_7
    return v0

    .line 29481
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->hasVerified()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29485
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29489
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 29456
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29473
    :cond_6
    :goto_6
    return-object p0

    .line 29457
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29458
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    .line 29460
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasVerified()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29461
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->setVerified(Z)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    .line 29463
    :cond_21
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 29464
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29465
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35400(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29468
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasPhoneNumberFormatted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29469
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29470
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->access$35500(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29496
    const/4 v2, 0x0

    .line 29498
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 29503
    if-eqz v2, :cond_10

    .line 29504
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    .line 29507
    :cond_10
    return-object p0

    .line 29499
    :catch_11
    move-exception v1

    .line 29500
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-object v2, v0

    .line 29501
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 29503
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 29504
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    :cond_21
    throw v3
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
    .line 29387
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29387
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

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
    .line 29387
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29536
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29538
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29544
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29545
    return-object p0

    .line 29541
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29603
    if-nez p1, :cond_8

    .line 29604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29606
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29607
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29609
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29619
    if-nez p1, :cond_8

    .line 29620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29622
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29623
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 29625
    return-object p0
.end method

.method public setPhoneNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29656
    if-nez p1, :cond_8

    .line 29657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29659
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29660
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29662
    return-object p0
.end method

.method public setPhoneNumberFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29672
    if-nez p1, :cond_8

    .line 29673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29675
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29676
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29678
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29530
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29532
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29533
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29520
    if-nez p1, :cond_8

    .line 29521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29523
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29525
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29526
    return-object p0
.end method

.method public setVerified(Z)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29563
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->bitField0_:I

    .line 29564
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->verified_:Z

    .line 29566
    return-object p0
.end method
