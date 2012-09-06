.class public final Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$UniqueId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$UniqueId;",
        "Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3833
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3653
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->maybeForceBuilderInitialization()V

    .line 3654
    return-void
.end method

.method static synthetic access$4400()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 1

    .prologue
    .line 3647
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->create()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 1

    .prologue
    .line 3659
    new-instance v0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3657
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3

    .prologue
    .line 3682
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    .line 3683
    .local v0, result:Lcom/google/wireless/webapps/Analytics$UniqueId;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3684
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3686
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 6

    .prologue
    .line 3700
    new-instance v1, Lcom/google/wireless/webapps/Analytics$UniqueId;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$UniqueId;-><init>(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 3701
    .local v1, result:Lcom/google/wireless/webapps/Analytics$UniqueId;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3702
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3703
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3704
    or-int/lit8 v2, v2, 0x1

    .line 3706
    :cond_10
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    #setter for: Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$UniqueId;->access$4602(Lcom/google/wireless/webapps/Analytics$UniqueId;I)I

    .line 3707
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3708
    or-int/lit8 v2, v2, 0x2

    .line 3710
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$UniqueId;->access$4702(Lcom/google/wireless/webapps/Analytics$UniqueId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3712
    or-int/lit8 v2, v2, 0x4

    .line 3714
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$UniqueId;->access$4802(Lcom/google/wireless/webapps/Analytics$UniqueId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    #setter for: Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$UniqueId;->access$4902(Lcom/google/wireless/webapps/Analytics$UniqueId;I)I

    .line 3716
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->clear()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->clear()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 2

    .prologue
    .line 3663
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3664
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    .line 3665
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3667
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3669
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3670
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 2

    .prologue
    .line 3821
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3822
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3824
    return-object p0
.end method

.method public clearNumber()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 2

    .prologue
    .line 3790
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3791
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    .line 3793
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 2

    .prologue
    .line 3857
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3858
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3860
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->clone()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->clone()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 3

    .prologue
    .line 3674
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->create()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

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
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->clone()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3647
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 3678
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3803
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3804
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3805
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3808
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

.method public getNumber()I
    .registers 2

    .prologue
    .line 3781
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3839
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3840
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3841
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3844
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

.method public hasName()Z
    .registers 3

    .prologue
    .line 3799
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

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

.method public hasNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3778
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

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
    .line 3835
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3734
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
    .line 3647
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3647
    check-cast p1, Lcom/google/wireless/webapps/Analytics$UniqueId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

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
    .line 3647
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3743
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 3748
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3750
    :sswitch_d
    return-object p0

    .line 3755
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    goto :goto_0

    .line 3760
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3765
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 3743
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3720
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3730
    :cond_6
    :goto_6
    return-object p0

    .line 3721
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3722
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setNumber(I)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 3724
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3725
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 3727
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3728
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setType(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    goto :goto_6
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3812
    if-nez p1, :cond_8

    .line 3813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3815
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3816
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->name_:Ljava/lang/Object;

    .line 3818
    return-object p0
.end method

.method public setNumber(I)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3784
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3785
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->number_:I

    .line 3787
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3848
    if-nez p1, :cond_8

    .line 3849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3851
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->bitField0_:I

    .line 3852
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->type_:Ljava/lang/Object;

    .line 3854
    return-object p0
.end method
