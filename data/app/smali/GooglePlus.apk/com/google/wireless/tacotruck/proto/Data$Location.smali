.class public final Lcom/google/wireless/tacotruck/proto/Data$Location;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private static final serialVersionUID:J


# instance fields
.field private accuracy_:I

.field private bitField0_:I

.field private clickTrackingUrl_:Ljava/lang/Object;

.field private distanceInMetres_:D

.field private hasOffer_:Z

.field private isRecommended_:Z

.field private latSpanE7_:I

.field private lngSpanE7_:I

.field private localClusterId_:Ljava/lang/Object;

.field private mapsUrlSignature_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23725
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Location;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 23726
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Location;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->initFields()V

    .line 23727
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22666
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22902
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedIsInitialized:B

    .line 22958
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedSerializedSize:I

    .line 22667
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22902
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedIsInitialized:B

    .line 22958
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedSerializedSize:I

    .line 22668
    return-void
.end method

.method static synthetic access$30602(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object p1
.end method

.method static synthetic access$30702(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30802(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30902(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object p1
.end method

.method static synthetic access$31002(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I

    return p1
.end method

.method static synthetic access$31102(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I

    return p1
.end method

.method static synthetic access$31202(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I

    return p1
.end method

.method static synthetic access$31302(Lcom/google/wireless/tacotruck/proto/Data$Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D

    return-wide p1
.end method

.method static synthetic access$31402(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31502(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z

    return p1
.end method

.method static synthetic access$31602(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z

    return p1
.end method

.method static synthetic access$31702(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31802(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22661
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    return p1
.end method

.method private getClickTrackingUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22877
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    .line 22878
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22879
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22881
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    .line 22884
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 1

    .prologue
    .line 22672
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Location;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method private getLocalClusterIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22711
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    .line 22712
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22713
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22715
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    .line 22718
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

.method private getMapsUrlSignatureBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22825
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    .line 22826
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22827
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22829
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    .line 22832
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
    .line 22743
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 22744
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22745
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22747
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 22750
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 22889
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 22890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    .line 22891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 22892
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 22893
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I

    .line 22894
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I

    .line 22895
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I

    .line 22896
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D

    .line 22897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    .line 22898
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z

    .line 22899
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z

    .line 22900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    .line 22901
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 23090
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->access$30400()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23093
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23037
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->access$30300(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccuracy()I
    .registers 2

    .prologue
    .line 22771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I

    return v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22863
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    .line 22864
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22865
    check-cast v1, Ljava/lang/String;

    .line 22873
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22867
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22869
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22870
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22871
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22873
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22661
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 22676
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Location;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getDistanceInMetres()D
    .registers 3

    .prologue
    .line 22801
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D

    return-wide v0
.end method

.method public getHasOffer()Z
    .registers 2

    .prologue
    .line 22843
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z

    return v0
.end method

.method public getIsRecommended()Z
    .registers 2

    .prologue
    .line 22853
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z

    return v0
.end method

.method public getLatSpanE7()I
    .registers 2

    .prologue
    .line 22781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I

    return v0
.end method

.method public getLngSpanE7()I
    .registers 2

    .prologue
    .line 22791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I

    return v0
.end method

.method public getLocalClusterId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22697
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    .line 22698
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22699
    check-cast v1, Ljava/lang/String;

    .line 22707
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22703
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22704
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22705
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22707
    goto :goto_8
.end method

.method public getMapsUrlSignature()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22811
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    .line 22812
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22813
    check-cast v1, Ljava/lang/String;

    .line 22821
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22815
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22817
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22818
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22819
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22821
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22729
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    .line 22730
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22731
    check-cast v1, Ljava/lang/String;

    .line 22739
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22733
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22735
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22736
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22737
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22739
    goto :goto_8
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 22687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 22761
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedSerializedSize:I

    .line 22961
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 23013
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 22963
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 22964
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 22965
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22968
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 22969
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22972
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 22973
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22976
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 22977
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22980
    :cond_46
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 22981
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22984
    :cond_56
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_65

    .line 22985
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22988
    :cond_65
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 22989
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22992
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 22993
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 22996
    :cond_87
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9a

    .line 22997
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23000
    :cond_9a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_ab

    .line 23001
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23004
    :cond_ab
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_bc

    .line 23005
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23008
    :cond_bc
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_cf

    .line 23009
    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23012
    :cond_cf
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 23013
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public hasAccuracy()Z
    .registers 3

    .prologue
    .line 22768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

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

.method public hasClickTrackingUrl()Z
    .registers 3

    .prologue
    .line 22860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDistanceInMetres()Z
    .registers 3

    .prologue
    .line 22798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHasOffer()Z
    .registers 3

    .prologue
    .line 22840
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsRecommended()Z
    .registers 3

    .prologue
    .line 22850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatSpanE7()Z
    .registers 3

    .prologue
    .line 22778
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLngSpanE7()Z
    .registers 3

    .prologue
    .line 22788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocalClusterId()Z
    .registers 3

    .prologue
    .line 22694
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

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

.method public hasMapsUrlSignature()Z
    .registers 3

    .prologue
    .line 22808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 22726
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22684
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReverseGeocode()Z
    .registers 3

    .prologue
    .line 22758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22904
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedIsInitialized:B

    .line 22905
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 22914
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 22905
    goto :goto_9

    .line 22907
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 22908
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 22909
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedIsInitialized:B

    move v1, v2

    .line 22910
    goto :goto_9

    .line 22913
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22661
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23091
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22661
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 23095
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

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
    .line 23020
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getSerializedSize()I

    .line 22920
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 22921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22923
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 22924
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22926
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 22927
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22929
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 22930
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 22932
    :cond_39
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 22933
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22935
    :cond_47
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_54

    .line 22936
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22938
    :cond_54
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 22939
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22941
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 22942
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 22944
    :cond_72
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_83

    .line 22945
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22947
    :cond_83
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_92

    .line 22948
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22950
    :cond_92
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a1

    .line 22951
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22953
    :cond_a1
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b2

    .line 22954
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22956
    :cond_b2
    return-void
.end method
