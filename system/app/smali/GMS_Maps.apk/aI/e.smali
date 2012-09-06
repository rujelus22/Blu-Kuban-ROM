.class LaI/e;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaI/s;

.field final synthetic b:Z

.field final synthetic f:Z

.field final synthetic g:LaI/d;


# direct methods
.method constructor <init>(LaI/d;LY/c;LaI/s;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, LaI/e;->g:LaI/d;

    iput-object p3, p0, LaI/e;->a:LaI/s;

    iput-boolean p4, p0, LaI/e;->b:Z

    iput-boolean p5, p0, LaI/e;->f:Z

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 58
    const/4 v2, 0x0

    .line 60
    :try_start_2
    iget-object v0, p0, LaI/e;->g:LaI/d;

    iget-object v3, p0, LaI/e;->a:LaI/s;

    invoke-virtual {v0, v3}, LaI/d;->a_(LaI/s;)LaI/z;

    move-result-object v0

    .line 64
    iget-object v3, p0, LaI/e;->g:LaI/d;

    invoke-static {v3}, LaI/d;->a(LaI/d;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_32

    .line 67
    :try_start_f
    iget-boolean v2, p0, LaI/e;->b:Z

    if-eqz v2, :cond_1a

    .line 68
    const/4 v2, 0x1

    .line 69
    iget-object v3, p0, LaI/e;->g:LaI/d;

    invoke-virtual {v3, v0, v2}, LaI/d;->a(LaI/z;Z)V

    .line 79
    :cond_19
    :goto_19
    return-void

    .line 70
    :cond_1a
    iget-boolean v2, p0, LaI/e;->f:Z

    if-eqz v2, :cond_19

    .line 71
    iget-object v2, p0, LaI/e;->g:LaI/d;

    invoke-virtual {v2, v0}, LaI/d;->a(LaI/z;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_19

    .line 73
    :catch_24
    move-exception v0

    .line 74
    :goto_25
    const-string v2, "BaseQueryInSeparateThreadProvider"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    if-nez v1, :cond_19

    .line 76
    iget-object v0, p0, LaI/e;->g:LaI/d;

    invoke-static {v0}, LaI/d;->a(LaI/d;)I

    goto :goto_19

    .line 73
    :catch_32
    move-exception v0

    move v1, v2

    goto :goto_25
.end method
