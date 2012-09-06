.class public Ljm;
.super Ljava/lang/Object;
.source "SearchCriterion.java"

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

.field private final a:LnL;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LnL;LanD;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LnL;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Ljm;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Ljm;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Ljm;->a:LnL;

    .line 44
    iput-object p4, p0, Ljm;->a:LanD;

    .line 45
    return-void
.end method

.method public static a(Landroid/os/Bundle;LanD;)Ljm;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljm;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "searchTerm"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "whereClause"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, LnL;->a(Landroid/os/Bundle;)LnL;

    move-result-object v2

    .line 133
    new-instance v3, Ljm;

    invoke-direct {v3, v1, v0, v2, p1}, Ljm;-><init>(Ljava/lang/String;Ljava/lang/String;LnL;LanD;)V

    return-object v3
.end method


# virtual methods
.method public a()LSR;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Ljm;->a:Ljava/lang/String;

    invoke-static {v0}, LSR;->d(Ljava/lang/String;)LSR;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Ljm;->c:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Ljm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljm;->a:LnL;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Ljm;->a:LnL;

    return-object v0
.end method

.method public a()V
    .registers 6

    .prologue
    .line 49
    iget-object v0, p0, Ljm;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 50
    iget-object v0, p0, Ljm;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, LcY;->navigation_search_results:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ljm;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljm;->c:Ljava/lang/String;

    .line 54
    :goto_20
    return-void

    .line 52
    :cond_21
    const-string v0, ""

    iput-object v0, p0, Ljm;->c:Ljava/lang/String;

    goto :goto_20
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 105
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "kind"

    const-string v1, "searchCriterion"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "accountName"

    iget-object v1, p0, Ljm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "searchTerm"

    iget-object v1, p0, Ljm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    iget-object v1, p0, Ljm;->a:LnL;

    invoke-virtual {v1, v0}, LnL;->a(Landroid/os/Bundle;)V

    .line 112
    const-string v1, "whereClause"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ljm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p1, p0, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v0

    .line 86
    :cond_5
    instance-of v2, p1, Ljm;

    if-eqz v2, :cond_2b

    .line 87
    check-cast p1, Ljm;

    .line 88
    iget-object v2, p0, Ljm;->b:Ljava/lang/String;

    iget-object v3, p1, Ljm;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Ljm;->a:Ljava/lang/String;

    iget-object v3, p1, Ljm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Ljm;->a:LnL;

    iget-object v3, p1, Ljm;->a:LnL;

    invoke-virtual {v2, v3}, LnL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4

    :cond_2b
    move v0, v1

    .line 91
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 97
    const-class v0, Ljm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljm;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Ljm;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Ljm;->a:LnL;

    invoke-virtual {v1}, LnL;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 122
    const-string v0, "SearchCriterion {accountName=%s, searchTerm=%s, whereClause=%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljm;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljm;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ljm;->a:LnL;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
