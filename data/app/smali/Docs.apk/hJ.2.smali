.class public LhJ;
.super Ljava/lang/Object;
.source "ChildrenOfCollectionCriterion.java"

# interfaces
.implements LhK;


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Llu;

.field private a:LnL;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Llu;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, LhJ;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, LhJ;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, LhJ;->a:Llu;

    .line 52
    return-void
.end method

.method public static a(Landroid/os/Bundle;LanD;Llu;)LhJ;
    .registers 6
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
            "LhJ;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v0, "resourceId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_13

    if-nez v1, :cond_15

    .line 122
    :cond_13
    const/4 v0, 0x0

    .line 125
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, LhJ;

    invoke-direct {v0, v2, p2, v1}, LhJ;-><init>(Ljava/lang/String;Llu;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private a(Llu;Ljava/lang/String;)LkM;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-interface {p1, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1f

    .line 140
    new-instance v0, LhL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1f
    iget-object v1, p0, LhJ;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Llu;->a(LkG;Ljava/lang/String;)LkM;

    move-result-object v0

    .line 143
    if-nez v0, :cond_42

    .line 144
    new-instance v0, LhL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No collection with resource id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LhJ;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_42
    return-object v0
.end method


# virtual methods
.method public a()LSR;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, LhJ;->b:Ljava/lang/String;

    invoke-static {v0}, LSR;->c(Ljava/lang/String;)LSR;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, LhJ;->c:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, LhJ;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LhJ;->a:LnL;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, LhJ;->a:LnL;

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, LhJ;->a:Llu;

    iget-object v1, p0, LhJ;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, LhJ;->a(Llu;Ljava/lang/String;)LkM;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, LkM;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LhJ;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, LkM;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, LnP;->a(J)LnL;

    move-result-object v0

    iput-object v0, p0, LhJ;->a:LnL;

    .line 59
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "kind"

    const-string v1, "childrenOfCollection"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "accountName"

    iget-object v1, p0, LhJ;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "resourceId"

    iget-object v1, p0, LhJ;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, LhJ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_5

    .line 87
    :cond_4
    :goto_4
    return v0

    .line 82
    :cond_5
    instance-of v2, p1, LhJ;

    if-eqz v2, :cond_21

    .line 83
    check-cast p1, LhJ;

    .line 84
    iget-object v2, p0, LhJ;->b:Ljava/lang/String;

    iget-object v3, p1, LhJ;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, LhJ;->a:Ljava/lang/String;

    iget-object v3, p1, LhJ;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 87
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 93
    const-class v0, LhJ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LhJ;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, LhJ;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 166
    const-string v0, "ChildrenOfCollectionCriterion {accountName=%s, resourceID=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LhJ;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LhJ;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
