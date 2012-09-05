.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsLogRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37092
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    .line 37093
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->initFields()V

    .line 37094
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36802
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36829
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 36846
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 36803
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36797
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36829
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 36846
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 36804
    return-void
.end method

.method static synthetic access$51502(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36797
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object p1
.end method

.method static synthetic access$51602(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36797
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 1

    .prologue
    .line 36808
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 36827
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 36828
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 1

    .prologue
    .line 36934
    #calls: Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->access$51300()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 2

    .prologue
    .line 36812
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    return-object v0
.end method

.method public getLogEnvelope()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2

    .prologue
    .line 36823
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 36848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    .line 36849
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 36857
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 36851
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 36852
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 36853
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36856
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 36857
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasLogEnvelope()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36820
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

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

    .line 36831
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

    .line 36832
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36835
    :goto_8
    return v1

    .line 36832
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36834
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->memoizedIsInitialized:B

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
    .line 36864
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

    .line 36840
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getSerializedSize()I

    .line 36841
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 36842
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36844
    :cond_f
    return-void
.end method
