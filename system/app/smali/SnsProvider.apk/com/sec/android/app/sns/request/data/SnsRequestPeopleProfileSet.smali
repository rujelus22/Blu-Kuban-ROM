.class public Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestPeopleProfileSet.java"


# instance fields
.field private mSpTypeList:[I

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[IILjava/lang/String;)V
    .registers 8
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 33
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 35
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mStatus:Ljava/lang/String;

    .line 39
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method


# virtual methods
.method public getSpTypeList()[I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hasSpType(I)Z
    .registers 7
    .parameter "spType"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_f

    aget v1, v0, v2

    .line 50
    .local v1, i:I
    if-ne p1, v1, :cond_c

    .line 51
    const/4 v4, 0x1

    .line 53
    .end local v1           #i:I
    :goto_b
    return v4

    .line 49
    .restart local v1       #i:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 53
    .end local v1           #i:I
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, spTypeInt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mSpTypeList:[I

    aget v2, v2, v0

    xor-int/lit8 v3, v0, 0xa

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    :cond_12
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": spTypeInt = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], mStatu = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    :goto_49
    return-object v2

    :cond_4a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_49
.end method
