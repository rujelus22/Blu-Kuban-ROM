.class public final Lcom/google/wireless/contacts/proto/Contact$Phone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Phone;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private evergreen_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private phone_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1112
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Phone;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Phone;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$Phone;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 1113
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Phone;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Phone;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->initFields()V

    .line 1114
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 589
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 693
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedIsInitialized:B

    .line 719
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedSerializedSize:I

    .line 590
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$Phone;-><init>(Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 591
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 693
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedIsInitialized:B

    .line 719
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedSerializedSize:I

    .line 591
    return-void
.end method

.method static synthetic access$1102(Lcom/google/wireless/contacts/proto/Contact$Phone;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/contacts/proto/Contact$Phone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/contacts/proto/Contact$Phone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/contacts/proto/Contact$Phone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/contacts/proto/Contact$Phone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 584
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 1

    .prologue
    .line 595
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Phone;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Phone;

    return-object v0
.end method

.method private getPhoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 634
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    .line 635
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 636
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 638
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    .line 641
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

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 666
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    .line 667
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 668
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    .line 673
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

.method private initFields()V
    .registers 2

    .prologue
    .line 688
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z

    .line 692
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    .registers 1

    .prologue
    .line 819
    #calls: Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->access$900()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 2

    .prologue
    .line 599
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Phone;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Phone;

    return-object v0
.end method

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 5

    .prologue
    .line 620
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    .line 621
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 622
    check-cast v1, Ljava/lang/String;

    .line 630
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 624
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 626
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 628
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->phone_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 630
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 721
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedSerializedSize:I

    .line 722
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 742
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 724
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 725
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 726
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 729
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 730
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 733
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 734
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 737
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 738
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 741
    :cond_46
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedSerializedSize:I

    move v1, v0

    .line 742
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 652
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    .line 653
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 654
    check-cast v1, Ljava/lang/String;

    .line 662
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 658
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 660
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 662
    goto :goto_8
.end method

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 681
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 607
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhone()Z
    .registers 3

    .prologue
    .line 617
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 649
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 695
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedIsInitialized:B

    .line 696
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 699
    :goto_8
    return v1

    .line 696
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 698
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 704
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getSerializedSize()I

    .line 705
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 706
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 708
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 709
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 711
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 712
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 714
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 715
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Phone;->evergreen_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 717
    :cond_39
    return-void
.end method
