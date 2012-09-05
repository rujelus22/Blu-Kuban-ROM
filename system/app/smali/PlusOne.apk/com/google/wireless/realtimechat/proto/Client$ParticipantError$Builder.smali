.class public final Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
        "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private participantId_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34469
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34611
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34647
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34671
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34470
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->maybeForceBuilderInitialization()V

    .line 34471
    return-void
.end method

.method static synthetic access$47800()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 1

    .prologue
    .line 34464
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 1

    .prologue
    .line 34476
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34474
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 3

    .prologue
    .line 34501
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    .line 34502
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34503
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34505
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 6

    .prologue
    .line 34519
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 34520
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34521
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34522
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34523
    or-int/lit8 v2, v2, 0x1

    .line 34525
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->participantId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->access$48002(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34526
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 34527
    or-int/lit8 v2, v2, 0x2

    .line 34529
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->access$48102(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34530
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 34531
    or-int/lit8 v2, v2, 0x4

    .line 34533
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->access$48202(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34534
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 34535
    or-int/lit8 v2, v2, 0x8

    .line 34537
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->access$48302(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34538
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->access$48402(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;I)I

    .line 34539
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34480
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34482
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34483
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34484
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34486
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34488
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34489
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34696
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34698
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34732
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34734
    return-object p0
.end method

.method public clearParticipantId()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34636
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34638
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 2

    .prologue
    .line 34664
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34665
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34667
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3

    .prologue
    .line 34493
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

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
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 2

    .prologue
    .line 34497
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34676
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34677
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34678
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34679
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34682
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

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34712
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34713
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34714
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34715
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34718
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

.method public getParticipantId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34616
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34617
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34618
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34619
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34622
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 34652
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 34673
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 34709
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34613
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 34649
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

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
    .line 34464
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

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
    .line 34464
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 34569
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 34574
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34576
    :sswitch_d
    return-object p0

    .line 34581
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34582
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    goto :goto_0

    .line 34586
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 34587
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 34588
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 34589
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34590
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 34595
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34596
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 34600
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 34569
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 34543
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34556
    :cond_6
    :goto_6
    return-object p0

    .line 34544
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34545
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    .line 34547
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34548
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    .line 34550
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 34551
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    .line 34553
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34554
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    goto :goto_6
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34686
    if-nez p1, :cond_8

    .line 34687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34689
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34690
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->firstName_:Ljava/lang/Object;

    .line 34692
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34722
    if-nez p1, :cond_8

    .line 34723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34725
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34726
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->fullName_:Ljava/lang/Object;

    .line 34728
    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34626
    if-nez p1, :cond_8

    .line 34627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34629
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34630
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->participantId_:Ljava/lang/Object;

    .line 34632
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34655
    if-nez p1, :cond_8

    .line 34656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34658
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->bitField0_:I

    .line 34659
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 34661
    return-object p0
.end method
