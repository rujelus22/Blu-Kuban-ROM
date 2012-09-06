.class LaM/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aW;

.field final synthetic b:Z

.field final synthetic c:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;Lcom/google/googlenav/aW;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, LaM/bk;->c:LaM/bj;

    iput-object p2, p0, LaM/bk;->a:Lcom/google/googlenav/aW;

    iput-boolean p3, p0, LaM/bk;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 624
    const/4 v0, 0x1

    .line 625
    iget-object v1, p0, LaM/bk;->c:LaM/bj;

    iget-object v1, v1, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/bl;

    invoke-direct {v2, p0}, LaM/bl;-><init>(LaM/bk;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 635
    return-void
.end method
