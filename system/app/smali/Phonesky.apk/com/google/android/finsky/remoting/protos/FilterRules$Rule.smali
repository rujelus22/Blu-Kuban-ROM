.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# instance fields
.field private cachedSize:I

.field private comment_:Ljava/lang/String;

.field private constArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private doubleArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private hasComment:Z

.field private hasKey:Z

.field private hasNegate:Z

.field private hasOperator:Z

.field private hasResponseCode:Z

.field private key_:I

.field private longArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private negate_:Z

.field private operator_:I

.field private responseCode_:I

.field private stringArgHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stringArg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subrule_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    .line 77
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    .line 94
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    .line 285
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addConstArg(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 4
    .parameter "value"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    .line 241
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-object p0
.end method

.method public addDoubleArg(D)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 5
    .parameter "value"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    .line 214
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-object p0
.end method

.method public addLongArg(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 5
    .parameter "value"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    .line 187
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public addStringArg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 127
    if-nez p1, :cond_8

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    .line 133
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object p0
.end method

.method public addStringArgHash(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 5
    .parameter "value"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public addSubrule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 268
    if-nez p1, :cond_8

    .line 269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 271
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    .line 274
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    if-gez v0, :cond_7

    .line 381
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSerializedSize()I

    .line 383
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getConstArgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->constArg_:Ljava/util/List;

    return-object v0
.end method

.method public getDoubleArgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->doubleArg_:Ljava/util/List;

    return-object v0
.end method

.method public getKey()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    return v0
.end method

.method public getLongArgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->longArg_:Ljava/util/List;

    return-object v0
.end method

.method public getNegate()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    return v0
.end method

.method public getOperator()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    return v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 387
    const/4 v4, 0x0

    .line 388
    .local v4, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 389
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getNegate()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 392
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 393
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getOperator()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 396
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 397
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getKey()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 401
    :cond_31
    const/4 v0, 0x0

    .line 402
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_3a

    .line 406
    .end local v1           #element:Ljava/lang/String;
    :cond_4c
    add-int/2addr v4, v0

    .line 407
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 410
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 412
    .local v1, element:J
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_61

    .line 415
    .end local v1           #element:J
    :cond_77
    add-int/2addr v4, v0

    .line 416
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 419
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x8

    .line 421
    add-int/2addr v4, v0

    .line 422
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 424
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSubruleList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 425
    .local v1, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_a2

    .line 428
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 429
    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getResponseCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 432
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment()Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 433
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 437
    :cond_d7
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x8

    .line 439
    add-int/2addr v4, v0

    .line 440
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 443
    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 445
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_f7

    .line 448
    .end local v1           #element:Ljava/lang/Integer;
    :cond_10d
    add-int/2addr v4, v0

    .line 449
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 451
    iput v4, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->cachedSize:I

    .line 452
    return v4
.end method

.method public getStringArgHashList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArgHash_:Ljava/util/List;

    return-object v0
.end method

.method public getStringArgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->stringArg_:Ljava/util/List;

    return-object v0
.end method

.method public getSubruleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->subrule_:Ljava/util/List;

    return-object v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment:Z

    return v0
.end method

.method public hasKey()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey:Z

    return v0
.end method

.method public hasNegate()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate:Z

    return v0
.end method

.method public hasOperator()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator:Z

    return v0
.end method

.method public hasResponseCode()Z
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 460
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6a

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    :sswitch_d
    return-object p0

    .line 470
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setNegate(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 474
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setOperator(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 478
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setKey(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 482
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addStringArg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 486
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addLongArg(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 490
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addDoubleArg(D)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 494
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 495
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addSubrule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 500
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setResponseCode(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 504
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 508
    :sswitch_5a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addStringArgHash(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 512
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->addConstArg(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    goto :goto_0

    .line 460
    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x31 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x40 -> :sswitch_4a
        0x4a -> :sswitch_52
        0x51 -> :sswitch_5a
        0x58 -> :sswitch_62
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment:Z

    .line 307
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->comment_:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public setKey(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey:Z

    .line 99
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->key_:I

    .line 100
    return-object p0
.end method

.method public setNegate(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate:Z

    .line 65
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->negate_:Z

    .line 66
    return-object p0
.end method

.method public setOperator(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator:Z

    .line 82
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->operator_:I

    .line 83
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 3
    .parameter "value"

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode:Z

    .line 290
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->responseCode_:I

    .line 291
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasNegate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 343
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getNegate()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 345
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasOperator()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 346
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getOperator()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 348
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasKey()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 349
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getKey()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 351
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, element:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_32

    .line 354
    .end local v0           #element:Ljava/lang/String;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getLongArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 355
    .local v0, element:J
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    goto :goto_4b

    .line 357
    .end local v0           #element:J
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getDoubleArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 358
    .local v0, element:D
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    goto :goto_68

    .line 360
    .end local v0           #element:D
    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getSubruleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 361
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_85

    .line 363
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasResponseCode()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 364
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getResponseCode()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 366
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->hasComment()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 367
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 369
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getStringArgHashList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 370
    .local v0, element:J
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    goto :goto_bc

    .line 372
    .end local v0           #element:J
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;->getConstArgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 373
    .local v0, element:Ljava/lang/Integer;
    const/16 v3, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_da

    .line 375
    .end local v0           #element:Ljava/lang/Integer;
    :cond_f0
    return-void
.end method
