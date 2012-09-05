.class public final Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleId_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field private userGaiaId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41019
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 41064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 41100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 40878
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->maybeForceBuilderInitialization()V

    .line 40879
    return-void
.end method

.method static synthetic access$55100()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 1

    .prologue
    .line 40872
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 1

    .prologue
    .line 40884
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40882
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 3

    .prologue
    .line 40909
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    .line 40910
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40911
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40913
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 6

    .prologue
    .line 40927
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 40928
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40929
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40930
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40931
    or-int/lit8 v2, v2, 0x1

    .line 40933
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->access$55302(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 40934
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40935
    or-int/lit8 v2, v2, 0x2

    .line 40937
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->access$55402(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;J)J

    .line 40938
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 40939
    or-int/lit8 v2, v2, 0x4

    .line 40941
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->access$55502(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40942
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 40943
    or-int/lit8 v2, v2, 0x8

    .line 40945
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->access$55602(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40946
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->access$55702(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;I)I

    .line 40947
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3

    .prologue
    .line 40888
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40889
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 40890
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    .line 40892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 40894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 40896
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40897
    return-object p0
.end method

.method public clearCircleId()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2

    .prologue
    .line 41124
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41125
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 41127
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2

    .prologue
    .line 41088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41089
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 41091
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2

    .prologue
    .line 41036
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41037
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 41039
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3

    .prologue
    .line 41057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41058
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    .line 41060
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3

    .prologue
    .line 40901
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

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
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41105
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 41106
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41107
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41108
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 41111
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40872
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2

    .prologue
    .line 40905
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41069
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 41070
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41071
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41072
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 41075
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2

    .prologue
    .line 41024
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 41048
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 41102
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

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
    .line 41066
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41021
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    .line 41045
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

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
    .line 40872
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

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
    .line 40872
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40976
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 40977
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 40982
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40984
    :sswitch_d
    return-object p0

    .line 40989
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40990
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-result-object v2

    .line 40991
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    if-eqz v2, :cond_0

    .line 40992
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40993
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_0

    .line 40998
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 40999
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    goto :goto_0

    .line 41003
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    goto :goto_0

    .line 41008
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 40977
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40951
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40964
    :cond_6
    :goto_6
    return-object p0

    .line 40952
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40953
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 40955
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40956
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 40958
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 40959
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 40961
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->hasCircleId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40962
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setCircleId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    goto :goto_6
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41115
    if-nez p1, :cond_8

    .line 41116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41118
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41119
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->circleId_:Ljava/lang/Object;

    .line 41121
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41079
    if-nez p1, :cond_8

    .line 41080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41082
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41083
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 41085
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41027
    if-nez p1, :cond_8

    .line 41028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41030
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41031
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 41033
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41051
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->bitField0_:I

    .line 41052
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->userGaiaId_:J

    .line 41054
    return-object p0
.end method
