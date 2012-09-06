.class public final Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileCircleMembersResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

.field private key_:Ljava/lang/Object;

.field private member_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:Ljava/lang/Object;

.field private serverTime_:J

.field private suggestedMember_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3532
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 3533
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->initFields()V

    .line 3534
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2727
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2875
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedIsInitialized:B

    .line 2907
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedSerializedSize:I

    .line 2728
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2729
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2875
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedIsInitialized:B

    .line 2907
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedSerializedSize:I

    .line 2729
    return-void
.end method

.method static synthetic access$3702(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 1

    .prologue
    .line 2733
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2804
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    .line 2805
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2806
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2808
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    .line 2811
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

.method private getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2762
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 2763
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2764
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2766
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 2769
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
    .registers 3

    .prologue
    .line 2868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 2869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J

    .line 2870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    .line 2871
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 2872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    .line 2873
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    .line 2874
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 1

    .prologue
    .line 3015
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->access$3500()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3018
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2973
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->access$3400(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircle()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 2

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2

    .prologue
    .line 2737
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2790
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    .line 2791
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2792
    check-cast v1, Ljava/lang/String;

    .line 2800
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2794
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2796
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2797
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2798
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2800
    goto :goto_8
.end method

.method public getMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    return-object v0
.end method

.method public getMemberOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;

    return-object v0
.end method

.method public getMemberOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2748
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 2749
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2750
    check-cast v1, Ljava/lang/String;

    .line 2758
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2754
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2755
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2756
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->ownerGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2758
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2909
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedSerializedSize:I

    .line 2910
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 2938
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 2912
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 2913
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 2914
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2917
    :cond_1a
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 2918
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2921
    :cond_27
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 2922
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2925
    :cond_37
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_46

    .line 2926
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2929
    :cond_46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_60

    .line 2930
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2929
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2933
    :cond_60
    const/4 v0, 0x0

    :goto_61
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7a

    .line 2934
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2933
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 2937
    :cond_7a
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 2938
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 2780
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J

    return-wide v0
.end method

.method public getSuggestedMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getSuggestedMemberCount()I
    .registers 2

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestedMemberList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestedMemberOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;

    return-object v0
.end method

.method public getSuggestedMemberOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    return-object v0
.end method

.method public hasCircle()Z
    .registers 3

    .prologue
    .line 2819
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 2787
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2745
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 2777
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2877
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedIsInitialized:B

    .line 2878
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2881
    :goto_8
    return v1

    .line 2878
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2880
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3016
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    .registers 2

    .prologue
    .line 3020
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2945
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2886
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getSerializedSize()I

    .line 2887
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 2888
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2890
    :cond_13
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 2891
    iget-wide v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->serverTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2893
    :cond_1e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 2894
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2896
    :cond_2c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    .line 2897
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->circle_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2899
    :cond_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 2900
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->member_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2899
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 2902
    :cond_51
    const/4 v0, 0x0

    :goto_52
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 2903
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->suggestedMember_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2902
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 2905
    :cond_69
    return-void
.end method
