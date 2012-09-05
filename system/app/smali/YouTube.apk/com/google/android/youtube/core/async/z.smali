.class public Lcom/google/android/youtube/core/async/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/google/android/youtube/core/model/UserAuth;

.field public final c:Ljava/util/Map;

.field public final d:[B

.field private volatile e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    .line 47
    iput-object p2, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 48
    if-nez p3, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    .line 50
    iput-object p4, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    .line 51
    return-void

    .line 48
    :cond_1a
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_15
.end method

.method protected static a(Lcom/google/android/youtube/core/async/z;)[B
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    if-eqz v1, :cond_10

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    array-length v1, v0

    .line 39
    new-array v0, v1, [B

    .line 40
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_10
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/z;
    .registers 6
    .parameter

    .prologue
    .line 92
    const-string v0, "auth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/async/z;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/z;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/async/z;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/core/async/z;)Z
    .registers 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_5

    .line 77
    :cond_4
    :goto_4
    return v0

    .line 73
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/async/z;

    if-nez v2, :cond_b

    move v0, v1

    .line 74
    goto :goto_4

    .line 76
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    .line 77
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_35

    iget-object v2, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_33

    :goto_1f
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_1f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 101
    iget v0, p0, Lcom/google/android/youtube/core/async/z;->e:I

    .line 102
    if-nez v0, :cond_27

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_28

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    if-nez v2, :cond_2f

    :goto_24
    add-int/2addr v0, v1

    .line 108
    iput v0, p0, Lcom/google/android/youtube/core/async/z;->e:I

    .line 110
    :cond_27
    return v0

    .line 105
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/UserAuth;->hashCode()I

    move-result v0

    goto :goto_14

    .line 107
    :cond_2f
    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userAuth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "headers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const-string v0, "null"

    goto :goto_4c
.end method
