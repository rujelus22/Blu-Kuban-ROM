.class public final Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private continueUrl_:Ljava/lang/Object;

.field private failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private postMessageTargetOrigin_:Ljava/lang/Object;

.field private redirectUrl_:Ljava/lang/Object;

.field private signupComplete_:Z

.field private smsSent_:Z

.field private view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39515
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 39516
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->initFields()V

    .line 39517
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38770
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38929
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38964
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38771
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38929
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38964
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38772
    return-void
.end method

.method static synthetic access$54002(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object p1
.end method

.method static synthetic access$54102(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    return p1
.end method

.method static synthetic access$54202(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54302(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    return p1
.end method

.method static synthetic access$54402(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object p1
.end method

.method static synthetic access$54502(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54602(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54702(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38765
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    return p1
.end method

.method private getContinueUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38877
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38878
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38879
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38881
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38884
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 1

    .prologue
    .line 38776
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method private getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38909
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38910
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38911
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38913
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38916
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

.method private getRedirectUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38825
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38826
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38827
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38829
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38832
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
    const/4 v1, 0x0

    .line 38921
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38922
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    .line 38923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38924
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    .line 38925
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 38926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38928
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 1

    .prologue
    .line 39076
    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->access$53800()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39079
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39012
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;->access$53700(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinueUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38863
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    .line 38864
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38865
    check-cast v1, Ljava/lang/String;

    .line 38873
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38867
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38869
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38870
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38871
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->continueUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38873
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2

    .prologue
    .line 38780
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method public getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38853
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public getPostMessageTargetOrigin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38895
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    .line 38896
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38897
    check-cast v1, Ljava/lang/String;

    .line 38905
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38899
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38901
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38902
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38903
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->postMessageTargetOrigin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38905
    goto :goto_8
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38811
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    .line 38812
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38813
    check-cast v1, Ljava/lang/String;

    .line 38821
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38815
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38817
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38818
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38819
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->redirectUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38821
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38966
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    .line 38967
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 38999
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 38969
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 38970
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 38971
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38974
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 38975
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38978
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 38979
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38982
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 38983
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 38986
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 38987
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38990
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 38991
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38994
    :cond_66
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_78

    .line 38995
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38998
    :cond_78
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 38999
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSignupComplete()Z
    .registers 2

    .prologue
    .line 38801
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    return v0
.end method

.method public getSmsSent()Z
    .registers 2

    .prologue
    .line 38843
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    return v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 38791
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public hasContinueUrl()Z
    .registers 3

    .prologue
    .line 38860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasFailureView()Z
    .registers 3

    .prologue
    .line 38850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasPostMessageTargetOrigin()Z
    .registers 3

    .prologue
    .line 38892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasRedirectUrl()Z
    .registers 3

    .prologue
    .line 38808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasSignupComplete()Z
    .registers 3

    .prologue
    .line 38798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasSmsSent()Z
    .registers 3

    .prologue
    .line 38840
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

.method public hasView()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38788
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

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

    .line 38931
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    .line 38932
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38935
    :goto_8
    return v1

    .line 38932
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38934
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39077
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38765
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;
    .registers 2

    .prologue
    .line 39081
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse$Builder;

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
    .line 39006
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

    .line 38940
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSerializedSize()I

    .line 38941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 38942
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->view_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38944
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 38945
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->signupComplete_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38947
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 38948
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38950
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 38951
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->smsSent_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 38953
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 38954
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->failureView_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38956
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 38957
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getContinueUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38959
    :cond_55
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    .line 38960
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getPostMessageTargetOriginBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38962
    :cond_65
    return-void
.end method
