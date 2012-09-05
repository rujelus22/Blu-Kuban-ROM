.class public final Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$BatchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private actionToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;"
        }
    .end annotation
.end field

.field private unauth_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 1157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 936
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 937
    return-void
.end method

.method static synthetic access$900()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 1

    .prologue
    .line 930
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 1

    .prologue
    .line 942
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRequestIsMutable()V
    .registers 3

    .prologue
    .line 1071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 1073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1075
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 940
    return-void
.end method


# virtual methods
.method public addAllRequest(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$Request;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1139
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1141
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/tacotruck/proto/Network$Request$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1134
    return-object p0
.end method

.method public addRequest(ILcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1114
    if-nez p2, :cond_8

    .line 1115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1117
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1118
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1120
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1125
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    return-object p0
.end method

.method public addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1104
    if-nez p1, :cond_8

    .line 1105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1107
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1108
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 3

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    .line 966
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 967
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 969
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 6

    .prologue
    .line 983
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 984
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 985
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 986
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 987
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 988
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 990
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1102(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Ljava/util/List;)Ljava/util/List;

    .line 991
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 992
    or-int/lit8 v2, v2, 0x1

    .line 994
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1202(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 996
    or-int/lit8 v2, v2, 0x2

    .line 998
    :cond_36
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1302(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Z)Z

    .line 999
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1402(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;I)I

    .line 1000
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 2

    .prologue
    .line 946
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 948
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    .line 952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 953
    return-object p0
.end method

.method public clearActionToken()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 2

    .prologue
    .line 1181
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1182
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getActionToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 1184
    return-object p0
.end method

.method public clearRequest()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 2

    .prologue
    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 1145
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1147
    return-object p0
.end method

.method public clearUnauth()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 2

    .prologue
    .line 1207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    .line 1210
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 3

    .prologue
    .line 957
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

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
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 1163
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1164
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 1168
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
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 2

    .prologue
    .line 961
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 3
    .parameter "index"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Request;

    return-object v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnauth()Z
    .registers 2

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    return v0
.end method

.method public hasActionToken()Z
    .registers 3

    .prologue
    .line 1159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

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

.method public hasUnauth()Z
    .registers 3

    .prologue
    .line 1195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

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
    .line 930
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

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
    .line 930
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1034
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 1039
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1041
    :sswitch_d
    return-object p0

    .line 1046
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    .line 1047
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1048
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    goto :goto_0

    .line 1052
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    goto :goto_0

    .line 1057
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    goto :goto_0

    .line 1034
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1004
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1021
    :cond_6
    :goto_6
    return-object p0

    .line 1005
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1100(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1006
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1007
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1100(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    .line 1008
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1015
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->hasActionToken()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1016
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getActionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->setActionToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    .line 1018
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->hasUnauth()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1019
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getUnauth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->setUnauth(Z)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    goto :goto_6

    .line 1010
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1011
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->access$1100(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActionToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1172
    if-nez p1, :cond_8

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1176
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->actionToken_:Ljava/lang/Object;

    .line 1178
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/tacotruck/proto/Network$Request$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1099
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1101
    return-object p0
.end method

.method public setRequest(ILcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1088
    if-nez p2, :cond_8

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1091
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 1092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1094
    return-object p0
.end method

.method public setUnauth(Z)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->bitField0_:I

    .line 1202
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->unauth_:Z

    .line 1204
    return-object p0
.end method
