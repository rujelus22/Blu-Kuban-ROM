.class LaQ/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:LaS/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;LaS/h;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, LaQ/aq;->c:LaQ/ao;

    iput-object p2, p0, LaQ/aq;->a:LaS/h;

    iput-object p3, p0, LaQ/aq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 379
    const-string v0, "call"

    iget-object v1, p0, LaQ/aq;->a:LaS/h;

    iget-object v2, p0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaS/a;->a(Ljava/lang/String;LaS/h;Lcom/google/googlenav/ai;)V

    .line 381
    invoke-static {}, LaS/j;->a()LaS/j;

    move-result-object v0

    iget-object v1, p0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LaQ/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LaS/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->c(LaQ/ao;)LaM/aP;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/aP;->d(Z)V

    .line 384
    new-instance v0, LaQ/ar;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaQ/ar;-><init>(LaQ/aq;LY/c;)V

    invoke-virtual {v0}, LaQ/ar;->g()V

    .line 398
    iget-object v0, p0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 399
    iget-object v0, p0, LaQ/aq;->c:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->d(LaQ/ao;)LaM/m;

    move-result-object v0

    iget-object v1, p0, LaQ/aq;->b:Ljava/lang/String;

    new-instance v2, LaQ/as;

    invoke-direct {v2, p0}, LaQ/as;-><init>(LaQ/aq;)V

    invoke-virtual {v0, v1, v2}, LaM/m;->a(Ljava/lang/String;Lcom/google/googlenav/aB;)V

    .line 406
    :cond_4e
    return-void
.end method
