.class LaQ/ar;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaQ/aq;


# direct methods
.method constructor <init>(LaQ/aq;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, LaQ/ar;->a:LaQ/aq;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, LaQ/ar;->a:LaQ/aq;

    iget-object v0, v0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0}, LaS/o;->e()V

    .line 390
    iget-object v0, p0, LaQ/ar;->a:LaQ/aq;

    iget-object v0, v0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 392
    iget-object v0, p0, LaQ/ar;->a:LaQ/aq;

    iget-object v0, v0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    iget-object v1, p0, LaQ/ar;->a:LaQ/aq;

    iget-object v1, v1, LaQ/aq;->c:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LaM/m;->a(Lcom/google/googlenav/ai;Z)V

    .line 394
    :cond_2d
    return-void
.end method
