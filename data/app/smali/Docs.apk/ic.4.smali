.class public Lic;
.super Ljava/lang/Object;
.source "EntriesFilterCriterion.java"

# interfaces
.implements LhK;


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private final a:Llu;

.field private a:LnL;

.field private final a:Lnk;

.field private final a:Z

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnk;ZLanD;Llu;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk;",
            "Z",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Llu;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lic;->a:Lnk;

    .line 59
    iput-boolean p2, p0, Lic;->a:Z

    .line 60
    iput-object p5, p0, Lic;->a:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lic;->a:LanD;

    .line 62
    iput-object p4, p0, Lic;->a:Llu;

    .line 63
    return-void
.end method

.method public static a(Landroid/os/Bundle;LanD;Llu;)Lic;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Llu;",
            ")",
            "Lic;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "accountName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    const-string v1, "filter"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_29

    invoke-static {v1}, Lnk;->valueOf(Ljava/lang/String;)Lnk;

    move-result-object v1

    .line 162
    :goto_16
    const-string v2, "isInheritable"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 163
    const-string v2, "isInheritable"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 164
    if-eqz v5, :cond_28

    if-eqz v1, :cond_28

    if-nez v3, :cond_2b

    .line 167
    :cond_28
    :goto_28
    return-object v0

    :cond_29
    move-object v1, v0

    .line 161
    goto :goto_16

    .line 167
    :cond_2b
    new-instance v0, Lic;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lic;-><init>(Lnk;ZLanD;Llu;Ljava/lang/String;)V

    goto :goto_28
.end method


# virtual methods
.method public a()LSR;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lic;->a:Lnk;

    invoke-virtual {v0}, Lnk;->a()LSR;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lic;->b:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lic;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lic;->a:LnL;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lic;->a:LnL;

    return-object v0
.end method

.method public a()Lnk;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lic;->a:Lnk;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lic;->a:Lnk;

    invoke-virtual {v0}, Lnk;->a()I

    move-result v1

    .line 68
    iget-object v0, p0, Lic;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 69
    if-eqz v1, :cond_3d

    if-eqz v0, :cond_3d

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic;->b:Ljava/lang/String;

    .line 75
    :goto_18
    iget-object v0, p0, Lic;->a:Llu;

    iget-object v1, p0, Lic;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 76
    if-nez v0, :cond_42

    .line 77
    new-instance v0, LhL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3d
    const-string v0, ""

    iput-object v0, p0, Lic;->b:Ljava/lang/String;

    goto :goto_18

    .line 79
    :cond_42
    iget-object v1, p0, Lic;->a:Lnk;

    invoke-virtual {v1, v0}, Lnk;->a(LkG;)LnL;

    move-result-object v0

    iput-object v0, p0, Lic;->a:LnL;

    .line 80
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 127
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "kind"

    const-string v1, "entriesFilter"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "accountName"

    iget-object v1, p0, Lic;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "filter"

    iget-object v1, p0, Lic;->a:Lnk;

    invoke-virtual {v1}, Lnk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "isInheritable"

    iget-boolean v1, p0, Lic;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lic;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p1, p0, :cond_5

    .line 109
    :cond_4
    :goto_4
    return v0

    .line 103
    :cond_5
    instance-of v2, p1, Lic;

    if-eqz v2, :cond_27

    .line 104
    check-cast p1, Lic;

    .line 105
    iget-object v2, p0, Lic;->a:Lnk;

    iget-object v3, p1, Lic;->a:Lnk;

    invoke-virtual {v2, v3}, Lnk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lic;->a:Z

    iget-boolean v3, p1, Lic;->a:Z

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lic;->a:Ljava/lang/String;

    iget-object v3, p1, Lic;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4

    :cond_27
    move v0, v1

    .line 109
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 119
    const-class v0, Lic;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-boolean v0, p0, Lic;->a:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_b
    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Lic;->a:Lnk;

    invoke-virtual {v1}, Lnk;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Lic;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 143
    const-string v0, "EntriesFilterCriterion {accountName=%s, filter=%s, isInheritable=%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lic;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lic;->a:Lnk;

    invoke-virtual {v3}, Lnk;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lic;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
