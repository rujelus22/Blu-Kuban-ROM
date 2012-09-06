.class public Lx/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lx/r;


# direct methods
.method constructor <init>(Lx/r;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lx/g;->a:Lx/r;

    .line 49
    return-void
.end method


# virtual methods
.method public a()D
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->e()D

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->g()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->h()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->f()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->i()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 157
    instance-of v0, p1, Lx/g;

    if-nez v0, :cond_6

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_5
    return v0

    .line 160
    :cond_6
    check-cast p1, Lx/g;

    .line 161
    iget-object v0, p1, Lx/g;->a:Lx/r;

    iget-object v1, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0, v1}, Lx/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method f()Lx/r;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lx/g;->a:Lx/r;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v0}, Lx/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lx/g;->a:Lx/r;

    invoke-virtual {v1}, Lx/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
