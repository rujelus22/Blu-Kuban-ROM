.class public final Lcom/google/android/plus1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/util/Set;

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/u;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    .line 39
    return-void

    .line 38
    :cond_10
    const/4 v4, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    .line 27
    iput-object p2, p0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    .line 28
    if-eqz p3, :cond_14

    .line 29
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    .line 33
    :goto_f
    iput p4, p0, Lcom/google/android/plus1/u;->d:I

    .line 34
    iput-object p5, p0, Lcom/google/android/plus1/u;->e:Ljava/lang/String;

    .line 35
    return-void

    .line 31
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    goto :goto_f
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 43
    instance-of v0, p1, Lcom/google/android/plus1/u;

    if-eqz v0, :cond_2e

    .line 44
    check-cast p1, Lcom/google/android/plus1/u;

    .line 46
    iget-object v0, p0, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/plus1/u;->d:I

    iget v1, p1, Lcom/google/android/plus1/u;->d:I

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x1

    .line 50
    :goto_2b
    return v0

    .line 46
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b

    .line 50
    :cond_2e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2b
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/plus1/u;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 61
    const-string v0, "URI=%s,+1=%s,totalCount=%s,abuseToken=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/plus1/u;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/plus1/u;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
