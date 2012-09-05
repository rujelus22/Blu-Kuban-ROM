.class public abstract Llz;
.super Lnd;
.source "a"


# instance fields
.field volatile c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnd;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final b(Lnd;)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lnd;->o()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llz;->f:Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lnd;->p()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llz;->g:Ljava/lang/Object;

    .line 34
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Llz;->c:Ljava/lang/String;

    .line 22
    if-nez v0, :cond_8

    .line 23
    invoke-virtual {p0}, Llz;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_8
    return-object v0
.end method
