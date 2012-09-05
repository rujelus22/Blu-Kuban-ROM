.class public final Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapToPlaceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

.field private static final serialVersionUID:J


# instance fields
.field private accuracyInMeters_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20075
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    .line 20076
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->initFields()V

    .line 20077
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19720
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19758
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 19784
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 19721
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19715
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19722
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19758
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 19784
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 19722
    return-void
.end method

.method static synthetic access$27102(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19715
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object p1
.end method

.method static synthetic access$27202(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19715
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    return p1
.end method

.method static synthetic access$27302(Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19715
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 1

    .prologue
    .line 19726
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 19755
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 19756
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    .line 19757
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    .registers 1

    .prologue
    .line 19876
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;->access$26900()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccuracyInMeters()I
    .registers 2

    .prologue
    .line 19751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;
    .registers 2

    .prologue
    .line 19730
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 19741
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    .line 19787
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 19799
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 19789
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 19790
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 19791
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19794
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 19795
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19798
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 19799
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAccuracyInMeters()Z
    .registers 3

    .prologue
    .line 19748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19738
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 19760
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    .line 19761
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 19770
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 19761
    goto :goto_9

    .line 19763
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 19764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 19765
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 19766
    goto :goto_9

    .line 19769
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 19806
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 19775
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->getSerializedSize()I

    .line 19776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 19777
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19779
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 19780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceRequest;->accuracyInMeters_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19782
    :cond_1b
    return-void
.end method
