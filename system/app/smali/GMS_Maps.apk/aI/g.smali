.class LaI/g;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:LaI/z;

.field final synthetic b:LaI/f;


# direct methods
.method constructor <init>(LaI/f;LY/c;LaI/z;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, LaI/g;->b:LaI/f;

    iput-object p3, p0, LaI/g;->a:LaI/z;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, LaI/g;->a:LaI/z;

    invoke-virtual {v0}, LaI/z;->b()LaI/s;

    move-result-object v0

    .line 88
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v1

    invoke-virtual {v1}, LaI/o;->d()LaI/s;

    move-result-object v1

    .line 89
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, LaI/s;->g()J

    move-result-wide v2

    invoke-virtual {v1}, LaI/s;->g()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1f

    .line 98
    :cond_1e
    :goto_1e
    return-void

    .line 97
    :cond_1f
    iget-object v0, p0, LaI/g;->b:LaI/f;

    iget-object v1, p0, LaI/g;->a:LaI/z;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LaI/f;->a(LaI/z;Z)V

    goto :goto_1e
.end method
