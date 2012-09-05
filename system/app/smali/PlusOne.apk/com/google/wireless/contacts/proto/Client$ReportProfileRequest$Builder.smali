.class public final Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ReportProfileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;",
        "Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ReportProfileRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

.field private bitField0_:I

.field private fullName_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13688
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13767
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13810
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13539
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13540
    return-void
.end method

.method static synthetic access$18000()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 1

    .prologue
    .line 13533
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 1

    .prologue
    .line 13545
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13543
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 3

    .prologue
    .line 13570
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    .line 13571
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13572
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13574
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 6

    .prologue
    .line 13588
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 13589
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13590
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13591
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13592
    or-int/lit8 v2, v2, 0x1

    .line 13594
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->access$18202(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13595
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13596
    or-int/lit8 v2, v2, 0x2

    .line 13598
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->access$18302(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13599
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13600
    or-int/lit8 v2, v2, 0x4

    .line 13602
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->access$18402(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13603
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 13604
    or-int/lit8 v2, v2, 0x8

    .line 13606
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->access$18502(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13607
    #setter for: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->access$18602(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;I)I

    .line 13608
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13549
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13550
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13551
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13553
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13554
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13555
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13556
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13557
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13558
    return-object p0
.end method

.method public clearAbuse()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13803
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13805
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13806
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13755
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13756
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13758
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13724
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13726
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13727
    return-object p0
.end method

.method public clearProfileType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13827
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13828
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13830
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3

    .prologue
    .line 13562
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

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
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAbuse()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 2

    .prologue
    .line 13772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13533
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 2

    .prologue
    .line 13566
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13736
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13737
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13738
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13739
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13742
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

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 13693
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getProfileType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 2

    .prologue
    .line 13815
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    return-object v0
.end method

.method public hasAbuse()Z
    .registers 3

    .prologue
    .line 13769
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

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
    .line 13733
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13690
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfileType()Z
    .registers 3

    .prologue
    .line 13812
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

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

.method public mergeAbuse(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13791
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13793
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilder(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13799
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13800
    return-object p0

    .line 13796
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

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
    .line 13533
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

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
    .line 13533
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13638
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_66

    .line 13643
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13645
    :sswitch_d
    return-object p0

    .line 13650
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v1

    .line 13651
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->hasId()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 13652
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 13654
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13655
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    goto :goto_0

    .line 13659
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    :sswitch_2a
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13660
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 13664
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->newBuilder()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v1

    .line 13665
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->hasAbuse()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 13666
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->getAbuse()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    .line 13668
    :cond_48
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13669
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->setAbuse(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    goto :goto_0

    .line 13673
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    :sswitch_53
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 13674
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    move-result-object v3

    .line 13675
    .local v3, value:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    if-eqz v3, :cond_0

    .line 13676
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13677
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    goto :goto_0

    .line 13638
    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_53
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 13612
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13625
    :cond_6
    :goto_6
    return-object p0

    .line 13613
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13614
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    .line 13616
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13617
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    .line 13619
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->hasAbuse()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 13620
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getAbuse()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeAbuse(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    .line 13622
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->hasProfileType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13623
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getProfileType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->setProfileType(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    goto :goto_6
.end method

.method public mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13712
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13714
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13720
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13721
    return-object p0

    .line 13717
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    goto :goto_1f
.end method

.method public setAbuse(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13785
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->build()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13787
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13788
    return-object p0
.end method

.method public setAbuse(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13775
    if-nez p1, :cond_8

    .line 13776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13778
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13780
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13781
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13746
    if-nez p1, :cond_8

    .line 13747
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13749
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13750
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13752
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13706
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13708
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13709
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13696
    if-nez p1, :cond_8

    .line 13697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13699
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13701
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13702
    return-object p0
.end method

.method public setProfileType(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13818
    if-nez p1, :cond_8

    .line 13819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13821
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->bitField0_:I

    .line 13822
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13824
    return-object p0
.end method
