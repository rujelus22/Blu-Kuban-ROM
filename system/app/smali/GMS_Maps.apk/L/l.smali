.class public Ll/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/h;


# instance fields
.field private final a:Ln/h;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/az;

    .line 37
    invoke-virtual {v0}, Ln/az;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_9

    .line 40
    :cond_1c
    new-instance v2, Ln/i;

    invoke-direct {v2, v1}, Ln/i;-><init>(I)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/az;

    .line 42
    invoke-virtual {v0, v2}, Ln/az;->a(Ln/i;)V

    goto :goto_25

    .line 44
    :cond_35
    iput-object v2, p0, Ll/l;->a:Ln/h;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ln/aa;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Ll/l;->a:Ln/h;

    invoke-interface {v0}, Ln/h;->a()Ln/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/Q;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Ll/l;->a:Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(Ln/Q;)Z

    move-result v0

    return v0
.end method

.method public a(Ln/ab;)Z
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Ll/l;->a:Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(Ln/ab;)Z

    move-result v0

    return v0
.end method
