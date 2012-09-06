.class LaM/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/K;


# instance fields
.field final synthetic a:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 2750
    iput-object p1, p0, LaM/bq;->a:LaM/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    .line 2753
    iget-object v0, p0, LaM/bq;->a:LaM/bj;

    iget-boolean v0, v0, LaM/bj;->B:Z

    if-nez v0, :cond_1b

    .line 2754
    check-cast p1, Lcom/google/googlenav/ui/view/a;

    .line 2755
    iget-object v0, p0, LaM/bq;->a:LaM/bj;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaM/bj;->a(IILjava/lang/Object;)Z

    .line 2756
    const/4 v0, 0x1

    .line 2758
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
