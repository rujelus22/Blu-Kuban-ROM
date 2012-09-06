.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 43025
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43217
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 43238
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 43259
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 43280
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43026
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->maybeForceBuilderInitialization()V

    .line 43027
    return-void
.end method

.method static synthetic access$59500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 1

    .prologue
    .line 43020
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 1

    .prologue
    .line 43032
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43030
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 3

    .prologue
    .line 43059
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    .line 43060
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43061
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43063
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 6

    .prologue
    .line 43077
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 43078
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43079
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43080
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43081
    or-int/lit8 v2, v2, 0x1

    .line 43083
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43084
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43085
    or-int/lit8 v2, v2, 0x2

    .line 43087
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 43088
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 43089
    or-int/lit8 v2, v2, 0x4

    .line 43091
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$59902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 43092
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 43093
    or-int/lit8 v2, v2, 0x8

    .line 43095
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$60002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z

    .line 43096
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 43097
    or-int/lit8 v2, v2, 0x10

    .line 43099
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$60102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43100
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->access$60202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;I)I

    .line 43101
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 43036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43038
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43039
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 43040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43041
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 43042
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43043
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 43044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43045
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43046
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43047
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 43205
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43206
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43208
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 43316
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43319
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43252
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 43255
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43273
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 43276
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43231
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 43234
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3

    .prologue
    .line 43051
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

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
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43186
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43187
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43188
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43189
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43192
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
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43020
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 2

    .prologue
    .line 43055
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 43285
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43243
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43264
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43222
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43183
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 43282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43240
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43261
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43219
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 43125
    const/4 v0, 0x1

    return v0
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
    .line 43020
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43020
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

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
    .line 43020
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43134
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 43139
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43141
    :sswitch_d
    return-object p0

    .line 43146
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43147
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 43151
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43152
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 43156
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43157
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 43161
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43162
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 43166
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 43167
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 43168
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 43170
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 43171
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    goto :goto_0

    .line 43134
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 43105
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43121
    :cond_6
    :goto_6
    return-object p0

    .line 43106
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43107
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 43109
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 43110
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 43112
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 43113
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 43115
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 43116
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    .line 43118
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43119
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 43304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 43306
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43312
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43313
    return-object p0

    .line 43309
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43196
    if-nez p1, :cond_8

    .line 43197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43199
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43200
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 43202
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 43298
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43301
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43288
    if-nez p1, :cond_8

    .line 43289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43291
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 43293
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43294
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43246
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43247
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnComments_:Z

    .line 43249
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43268
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnShapes_:Z

    .line 43270
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->bitField0_:I

    .line 43226
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->returnUrls_:Z

    .line 43228
    return-object p0
.end method
