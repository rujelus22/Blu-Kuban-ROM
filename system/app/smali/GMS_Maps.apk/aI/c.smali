.class public abstract LaI/c;
.super LaI/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, LaI/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaI/s;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 15
    invoke-virtual {p0, p1}, LaI/c;->b(LaI/s;)Z

    move-result v0

    .line 16
    invoke-virtual {p0, p1}, LaI/c;->c(LaI/s;)Z

    move-result v1

    .line 17
    if-nez v0, :cond_10

    if-nez v1, :cond_10

    .line 19
    iput-boolean v3, p0, LaI/c;->a:Z

    .line 37
    :cond_f
    :goto_f
    return-void

    .line 23
    :cond_10
    invoke-virtual {p0, p1}, LaI/c;->d(LaI/s;)LaI/z;

    move-result-object v2

    .line 27
    iput-boolean v3, p0, LaI/c;->a:Z

    .line 29
    if-eqz v0, :cond_1d

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v2, v0}, LaI/c;->a(LaI/z;Z)V

    goto :goto_f

    .line 34
    :cond_1d
    if-eqz v1, :cond_f

    .line 35
    invoke-virtual {p0, v2}, LaI/c;->a(LaI/z;)V

    goto :goto_f
.end method

.method protected abstract d(LaI/s;)LaI/z;
.end method
