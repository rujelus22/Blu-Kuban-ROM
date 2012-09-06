.class public Ljn;
.super Ljava/lang/Object;
.source "SimpleCriterion.java"

# interfaces
.implements LhK;


# instance fields
.field private final a:LSR;

.field private final a:Ljava/lang/String;

.field private final a:LnL;

.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;LSR;Ljava/lang/String;LnL;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljn;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Ljn;->a:LSR;

    .line 53
    iput-object p3, p0, Ljn;->b:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Ljn;->a:LnL;

    .line 55
    iput-boolean p5, p0, Ljn;->a:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a()LSR;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljn;->a:LSR;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljn;->a:LnL;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "kind"

    iget-object v1, p0, Ljn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Ljn;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 84
    if-ne p1, p0, :cond_4

    .line 85
    const/4 v0, 0x1

    .line 90
    :goto_3
    return v0

    .line 86
    :cond_4
    instance-of v0, p1, Ljn;

    if-eqz v0, :cond_13

    .line 87
    check-cast p1, Ljn;

    .line 88
    iget-object v0, p0, Ljn;->a:Ljava/lang/String;

    iget-object v1, p1, Ljn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 90
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljn;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 112
    const-string v0, "SimpleCriterion {kind = \"%s\"}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljn;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
