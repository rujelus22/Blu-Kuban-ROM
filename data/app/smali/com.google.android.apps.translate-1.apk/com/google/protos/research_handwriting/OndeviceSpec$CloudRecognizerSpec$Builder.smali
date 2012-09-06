.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;",
        ">;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpecOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientName_:Ljava/lang/Object;

.field private clientVersion_:I

.field private compressRequests_:Z

.field private deviceName_:Ljava/lang/Object;

.field private deviceVersion_:I

.field private recoPath_:Ljava/lang/Object;

.field private sendFeedbackImmediately_:Z

.field private server_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1847
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2113
    iput-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    .line 2134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2248
    iput-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    .line 1848
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->maybeForceBuilderInitialization()V

    .line 1849
    return-void
.end method

.method static synthetic access$1900(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 1842
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    .line 1897
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1898
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1901
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 1854
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1852
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 3

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    .line 1888
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1889
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1891
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1905
    new-instance v2, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V

    .line 1906
    iget v3, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1907
    const/4 v1, 0x0

    .line 1908
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_70

    .line 1911
    :goto_e
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->server_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2202(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 1913
    or-int/lit8 v0, v0, 0x2

    .line 1915
    :cond_1a
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->recoPath_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2302(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 1917
    or-int/lit8 v0, v0, 0x4

    .line 1919
    :cond_26
    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->compressRequests_:Z
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2402(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Z)Z

    .line 1920
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 1921
    or-int/lit8 v0, v0, 0x8

    .line 1923
    :cond_33
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2502(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 1925
    or-int/lit8 v0, v0, 0x10

    .line 1927
    :cond_40
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->deviceVersion_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2602(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I

    .line 1928
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 1929
    or-int/lit8 v0, v0, 0x20

    .line 1931
    :cond_4d
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2702(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5a

    .line 1933
    or-int/lit8 v0, v0, 0x40

    .line 1935
    :cond_5a
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->clientVersion_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2802(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I

    .line 1936
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_67

    .line 1937
    or-int/lit16 v0, v0, 0x80

    .line 1939
    :cond_67
    iget-boolean v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->sendFeedbackImmediately_:Z
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$2902(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;Z)Z

    .line 1940
    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->access$3002(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;I)I

    .line 1941
    return-object v2

    :cond_70
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1858
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 1860
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 1862
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1863
    iput-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    .line 1864
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 1866
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1867
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    .line 1868
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 1870
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1871
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    .line 1872
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1873
    iput-boolean v2, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    .line 1874
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1875
    return-object p0
.end method

.method public clearClientName()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2215
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2216
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2218
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2241
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2242
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    .line 2244
    return-object p0
.end method

.method public clearCompressRequests()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2127
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    .line 2130
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2158
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2159
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2161
    return-object p0
.end method

.method public clearDeviceVersion()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2184
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2185
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    .line 2187
    return-object p0
.end method

.method public clearRecoPath()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2101
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2102
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getRecoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2104
    return-object p0
.end method

.method public clearSendFeedbackImmediately()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2262
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    .line 2265
    return-object p0
.end method

.method public clearServer()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 2065
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2066
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2068
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3

    .prologue
    .line 1879
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

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
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2197
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2198
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2199
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2202
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getClientVersion()I
    .registers 2

    .prologue
    .line 2232
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    return v0
.end method

.method public getCompressRequests()Z
    .registers 2

    .prologue
    .line 2118
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    .registers 2

    .prologue
    .line 1883
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2140
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2141
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2142
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2145
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDeviceVersion()I
    .registers 2

    .prologue
    .line 2175
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    return v0
.end method

.method public getRecoPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2083
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2084
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2085
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2088
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSendFeedbackImmediately()Z
    .registers 2

    .prologue
    .line 2253
    iget-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2047
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2048
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2049
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2052
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasClientName()Z
    .registers 3

    .prologue
    .line 2193
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 2229
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasCompressRequests()Z
    .registers 3

    .prologue
    .line 2115
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasDeviceName()Z
    .registers 3

    .prologue
    .line 2136
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasDeviceVersion()Z
    .registers 3

    .prologue
    .line 2172
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasRecoPath()Z
    .registers 3

    .prologue
    .line 2079
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasSendFeedbackImmediately()Z
    .registers 3

    .prologue
    .line 2250
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

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

.method public hasServer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2043
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1974
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1842
    check-cast p1, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    invoke-virtual {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1983
    sparse-switch v0, :sswitch_data_76

    .line 1988
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    :sswitch_d
    return-object p0

    .line 1995
    :sswitch_e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 1996
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    goto :goto_0

    .line 2000
    :sswitch_1b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    goto :goto_0

    .line 2005
    :sswitch_28
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    goto :goto_0

    .line 2010
    :sswitch_35
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    goto :goto_0

    .line 2015
    :sswitch_42
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    goto :goto_0

    .line 2020
    :sswitch_4f
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    goto :goto_0

    .line 2025
    :sswitch_5c
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    goto :goto_0

    .line 2030
    :sswitch_69
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    goto :goto_0

    .line 1983
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
        0x32 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x40 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1945
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1970
    :cond_6
    :goto_6
    return-object p0

    .line 1946
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasServer()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1947
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setServer(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1949
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasRecoPath()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1950
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getRecoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setRecoPath(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1952
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasCompressRequests()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1953
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getCompressRequests()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setCompressRequests(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1955
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1956
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setDeviceName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1958
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasDeviceVersion()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1959
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setDeviceVersion(I)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1961
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasClientName()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1962
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setClientName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1964
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1965
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setClientVersion(I)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    .line 1967
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasSendFeedbackImmediately()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1968
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getSendFeedbackImmediately()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->setSendFeedbackImmediately(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;

    goto :goto_6
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2206
    if-nez p1, :cond_8

    .line 2207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2209
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2210
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2212
    return-object p0
.end method

.method setClientName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2221
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2222
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientName_:Ljava/lang/Object;

    .line 2224
    return-void
.end method

.method public setClientVersion(I)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2235
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2236
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->clientVersion_:I

    .line 2238
    return-object p0
.end method

.method public setCompressRequests(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2121
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2122
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->compressRequests_:Z

    .line 2124
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2149
    if-nez p1, :cond_8

    .line 2150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2152
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2153
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2155
    return-object p0
.end method

.method setDeviceName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2164
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2165
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceName_:Ljava/lang/Object;

    .line 2167
    return-void
.end method

.method public setDeviceVersion(I)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2178
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2179
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->deviceVersion_:I

    .line 2181
    return-object p0
.end method

.method public setRecoPath(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2092
    if-nez p1, :cond_8

    .line 2093
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2095
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2096
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2098
    return-object p0
.end method

.method setRecoPath(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2107
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2108
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->recoPath_:Ljava/lang/Object;

    .line 2110
    return-void
.end method

.method public setSendFeedbackImmediately(Z)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2256
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2257
    iput-boolean p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->sendFeedbackImmediately_:Z

    .line 2259
    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2056
    if-nez p1, :cond_8

    .line 2057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2059
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2060
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2062
    return-object p0
.end method

.method setServer(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2071
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->bitField0_:I

    .line 2072
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec$Builder;->server_:Ljava/lang/Object;

    .line 2074
    return-void
.end method
