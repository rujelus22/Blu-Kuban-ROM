.class public LhA;
.super Ljava/lang/Object;
.source "AccountCriterion.java"

# interfaces
.implements LhK;


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Llu;

.field private a:LnL;


# direct methods
.method constructor <init>(Ljava/lang/String;Llu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, LhA;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, LhA;->a:Llu;

    .line 55
    return-void
.end method

.method public static a(Landroid/os/Bundle;Llu;)LhA;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, LhA;

    invoke-direct {v1, v0, p1}, LhA;-><init>(Ljava/lang/String;Llu;)V

    return-object v1
.end method


# virtual methods
.method public a()LSR;
    .registers 2

    .prologue
    .line 111
    sget-object v0, LSR;->a:LSR;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, LhA;->a:LnL;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, LhA;->a:LnL;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, LhA;->a:Llu;

    iget-object v1, p0, LhA;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 60
    if-nez v0, :cond_25

    .line 61
    new-instance v0, LhL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load account for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LhA;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LhL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_25
    invoke-static {v0}, LnP;->a(LkG;)LnL;

    move-result-object v0

    iput-object v0, p0, LhA;->a:LnL;

    .line 65
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "kind"

    const-string v1, "account"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "accountName"

    iget-object v1, p0, LhA;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 85
    if-ne p1, p0, :cond_4

    .line 86
    const/4 v0, 0x1

    .line 91
    :goto_3
    return v0

    .line 87
    :cond_4
    instance-of v0, p1, LhA;

    if-eqz v0, :cond_13

    .line 88
    check-cast p1, LhA;

    .line 89
    iget-object v0, p0, LhA;->a:Ljava/lang/String;

    iget-object v1, p1, LhA;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 91
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 97
    const-class v0, LhA;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LhA;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 122
    const-string v0, "AccountCriterion {accountName=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LhA;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
