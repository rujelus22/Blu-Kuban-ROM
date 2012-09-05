.class public final Lcom/google/wireless/tacotruck/proto/Data$Person;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private profilePhotoUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11245
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Person;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 11246
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Person;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->initFields()V

    .line 11247
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10621
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10780
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedIsInitialized:B

    .line 10809
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedSerializedSize:I

    .line 10622
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10623
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10780
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedIsInitialized:B

    .line 10809
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedSerializedSize:I

    .line 10623
    return-void
.end method

.method static synthetic access$14102(Lcom/google/wireless/tacotruck/proto/Data$Person;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J

    return-wide p1
.end method

.method static synthetic access$14202(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14402(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/google/wireless/tacotruck/proto/Data$Person;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10616
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 1

    .prologue
    .line 10627
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Person;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10730
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    .line 10731
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10732
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10734
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    .line 10737
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

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10666
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    .line 10667
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10668
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    .line 10673
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10698
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    .line 10699
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10700
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10702
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    .line 10705
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

.method private getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10762
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10763
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10764
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10766
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10769
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
    .line 10774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J

    .line 10775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    .line 10776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    .line 10777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    .line 10778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10779
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 1

    .prologue
    .line 10913
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->access$13900()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10916
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10860
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->access$13800(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10616
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 10631
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Person;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10716
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    .line 10717
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10718
    check-cast v1, Ljava/lang/String;

    .line 10726
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10720
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10722
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10723
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10724
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->email_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10726
    goto :goto_8
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10652
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    .line 10653
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10654
    check-cast v1, Ljava/lang/String;

    .line 10662
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10658
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10659
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10660
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10662
    goto :goto_8
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 10642
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10684
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    .line 10685
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10686
    check-cast v1, Ljava/lang/String;

    .line 10694
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10688
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10690
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10691
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10692
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10694
    goto :goto_8
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10748
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    .line 10749
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10750
    check-cast v1, Ljava/lang/String;

    .line 10758
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10754
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10755
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10756
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->profilePhotoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10758
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedSerializedSize:I

    .line 10812
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 10836
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 10814
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 10815
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 10816
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10819
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_27

    .line 10820
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10823
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_39

    .line 10824
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10827
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4a

    .line 10828
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10831
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_5a

    .line 10832
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10835
    :cond_5a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedSerializedSize:I

    move v1, v0

    .line 10836
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 10713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 10649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10639
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

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
    .line 10681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

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

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 10745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 10782
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedIsInitialized:B

    .line 10783
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10786
    :goto_8
    return v1

    .line 10783
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10785
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->memoizedIsInitialized:B

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
    .line 10843
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

    .line 10791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getSerializedSize()I

    .line 10792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 10793
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->gaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 10795
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1e

    .line 10796
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10798
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    .line 10799
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10801
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3d

    .line 10802
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10804
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4b

    .line 10805
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10807
    :cond_4b
    return-void
.end method
