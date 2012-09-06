.class public final Lld;
.super Ljava/lang/Object;
.source "EntrySpec.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lld;->a:Ljava/lang/String;

    .line 26
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lld;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lld;
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->a(Z)V

    .line 43
    invoke-static {v1}, Lld;->a(Landroid/os/Bundle;)Lld;

    move-result-object v0

    return-object v0

    .line 42
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Landroid/os/Bundle;)Lld;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v0, "resourceId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    if-eqz v3, :cond_1e

    move v0, v1

    :goto_11
    invoke-static {v0}, LafQ;->a(Z)V

    .line 57
    if-eqz v4, :cond_20

    :goto_16
    invoke-static {v1}, LafQ;->a(Z)V

    .line 58
    invoke-static {v3, v4}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v0

    return-object v0

    :cond_1e
    move v0, v2

    .line 56
    goto :goto_11

    :cond_20
    move v1, v2

    .line 57
    goto :goto_16
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lld;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lld;

    invoke-direct {v0, p0, p1}, Lld;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    const-string v0, "accountName"

    iget-object v1, p0, Lld;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v0, "resourceId"

    iget-object v1, p0, Lld;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 81
    const-string v0, "accountName"

    iget-object v1, p0, Lld;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "resourceId"

    iget-object v1, p0, Lld;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_5

    .line 95
    :cond_4
    :goto_4
    return v0

    .line 90
    :cond_5
    instance-of v2, p1, Lld;

    if-nez v2, :cond_b

    move v0, v1

    .line 91
    goto :goto_4

    .line 93
    :cond_b
    check-cast p1, Lld;

    .line 94
    iget-object v2, p0, Lld;->a:Ljava/lang/String;

    iget-object v3, p1, Lld;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lld;->b:Ljava/lang/String;

    iget-object v3, p1, Lld;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 100
    .line 101
    iget-object v0, p0, Lld;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lld;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 108
    const-string v0, "EntrySpec[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lld;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lld;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
