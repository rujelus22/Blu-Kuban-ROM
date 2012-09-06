.class public final Lcom/google/android/plus1/au;
.super Lcom/google/android/plus1/at;
.source "SourceFile"


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/plus1/at;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    .line 87
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    .line 88
    iput-object p3, p0, Lcom/google/android/plus1/au;->c:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/plus1/ak;)V
    .registers 5
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/plus1/au;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/plus1/ak;->a(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 93
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 101
    instance-of v0, p1, Lcom/google/android/plus1/au;

    if-eqz v0, :cond_1e

    .line 102
    check-cast p1, Lcom/google/android/plus1/au;

    .line 104
    iget-object v0, p0, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 107
    :goto_1b
    return v0

    .line 104
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b

    .line 107
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URI="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/plus1/au;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",+1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/au;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
