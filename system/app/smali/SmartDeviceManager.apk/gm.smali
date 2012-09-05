.class public abstract Lgm;
.super Lff;
.source "a"


# instance fields
.field protected final c:Lgm;

.field protected d:Lgm;

.field protected e:Lgm;


# direct methods
.method protected constructor <init>(ILgm;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lff;-><init>(I)V

    .line 32
    iput-object v0, p0, Lgm;->d:Lgm;

    .line 34
    iput-object v0, p0, Lgm;->e:Lgm;

    .line 45
    iput-object p2, p0, Lgm;->c:Lgm;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)I
.end method

.method protected abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public abstract g()I
.end method

.method public final h()Lgm;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lgm;->d:Lgm;

    .line 58
    if-nez v0, :cond_c

    .line 59
    new-instance v0, Lgf;

    invoke-direct {v0, p0}, Lgf;-><init>(Lgm;)V

    iput-object v0, p0, Lgm;->d:Lgm;

    .line 63
    :goto_b
    return-object v0

    .line 61
    :cond_c
    const/4 v1, -0x1

    iput v1, v0, Lgm;->b:I

    goto :goto_b
.end method

.method public final i()Lgm;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lgm;->e:Lgm;

    .line 69
    if-nez v0, :cond_c

    .line 70
    new-instance v0, Lgn;

    invoke-direct {v0, p0}, Lgn;-><init>(Lgm;)V

    iput-object v0, p0, Lgm;->e:Lgm;

    .line 74
    :goto_b
    return-object v0

    .line 72
    :cond_c
    const/4 v1, -0x1

    iput v1, v0, Lgm;->b:I

    goto :goto_b
.end method

.method public final j()Lgm;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lgm;->c:Lgm;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    invoke-virtual {p0, v0}, Lgm;->a(Ljava/lang/StringBuilder;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
