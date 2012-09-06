.class public final Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUnreadNotificationsCountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private unreadCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33914
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    .line 33915
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->initFields()V

    .line 33916
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33650
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33677
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedIsInitialized:B

    .line 33694
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedSerializedSize:I

    .line 33651
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33645
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33677
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedIsInitialized:B

    .line 33694
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedSerializedSize:I

    .line 33652
    return-void
.end method

.method static synthetic access$46802(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33645
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I

    return p1
.end method

.method static synthetic access$46902(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33645
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    .registers 1

    .prologue
    .line 33656
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 33675
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I

    .line 33676
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 1

    .prologue
    .line 33782
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->access$46600()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33645
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    .registers 2

    .prologue
    .line 33660
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 33696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedSerializedSize:I

    .line 33697
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 33705
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 33699
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 33700
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 33701
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33704
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 33705
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 33671
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I

    return v0
.end method

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33668
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 33679
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedIsInitialized:B

    .line 33680
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33683
    :goto_8
    return v1

    .line 33680
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33682
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33645
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 2

    .prologue
    .line 33783
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33645
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 2

    .prologue
    .line 33787
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

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
    .line 33712
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 33688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->getSerializedSize()I

    .line 33689
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 33690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33692
    :cond_f
    return-void
.end method
