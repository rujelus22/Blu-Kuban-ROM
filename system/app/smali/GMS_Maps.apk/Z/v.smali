.class public abstract Lz/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lz/d;


# virtual methods
.method a(Lz/d;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lz/v;->a:Lz/d;

    if-eqz v0, :cond_c

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_c
    iput-object p1, p0, Lz/v;->a:Lz/d;

    .line 58
    return-void
.end method

.method abstract a(Lz/h;)V
.end method

.method abstract a(Lz/j;)V
.end method

.method abstract b(Lz/h;)V
.end method

.method abstract b(Lz/j;)V
.end method
