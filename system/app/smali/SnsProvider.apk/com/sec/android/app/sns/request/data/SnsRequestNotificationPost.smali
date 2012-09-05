.class public Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;
.super Lcom/sec/android/app/sns/request/data/SnsRequest;
.source "SnsRequestNotificationPost.java"


# instance fields
.field private mSpTypeList:[I


# direct methods
.method public constructor <init>(I[II)V
    .registers 7
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"

    .prologue
    const/4 v2, 0x0

    .line 34
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p3, v2}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(IIIZ)V

    .line 36
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->mSpTypeList:[I

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->mSpTypeList:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    const-string v0, "SNS_FRAMEWORK"

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->mSpTypeList:[I

    return-object v0
.end method

.method public hasSpType(I)Z
    .registers 7
    .parameter "spType"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->mSpTypeList:[I

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
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
