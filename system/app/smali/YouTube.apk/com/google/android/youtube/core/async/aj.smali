.class public Lcom/google/android/youtube/core/async/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/youtube/core/async/h;


# instance fields
.field private volatile a:I

.field public final c:Landroid/net/Uri;

.field public final d:Lcom/google/android/youtube/core/model/UserAuth;

.field public final e:Ljava/util/Map;

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/youtube/core/async/ak;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/ak;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/aj;->b:Lcom/google/android/youtube/core/async/h;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    .line 53
    iput-object p2, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    .line 54
    if-nez p3, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    .line 56
    iput-object p4, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    .line 57
    return-void

    .line 54
    :cond_1a
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_15
.end method

.method protected static a(Lcom/google/android/youtube/core/async/aj;)[B
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    if-eqz v1, :cond_10

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    array-length v1, v0

    .line 63
    new-array v0, v1, [B

    .line 64
    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_10
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/aj;
    .registers 6
    .parameter

    .prologue
    .line 108
    const-string v0, "auth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/google/android/youtube/core/async/aj;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/aj;->a(Lcom/google/android/youtube/core/async/aj;)[B

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/async/aj;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/core/async/aj;)Z
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/google/android/youtube/core/async/aj;)Z
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p0, p1, :cond_5

    .line 93
    :cond_4
    :goto_4
    return v0

    .line 89
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/async/aj;

    if-nez v2, :cond_b

    move v0, v1

    .line 90
    goto :goto_4

    .line 92
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/async/aj;

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_35

    iget-object v2, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_33

    :goto_1f
    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_1f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget v0, p0, Lcom/google/android/youtube/core/async/aj;->a:I

    .line 118
    if-nez v0, :cond_27

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 121
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_28

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    if-nez v2, :cond_2f

    :goto_24
    add-int/2addr v0, v1

    .line 124
    iput v0, p0, Lcom/google/android/youtube/core/async/aj;->a:I

    .line 126
    :cond_27
    return v0

    .line 121
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/UserAuth;->hashCode()I

    move-result v0

    goto :goto_14

    .line 123
    :cond_2f
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{uri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', userAuth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', headers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/aj;->f:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    const-string v0, "null"

    goto :goto_36
.end method
