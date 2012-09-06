.class LaM/ao;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/i;

.field final synthetic b:LaM/am;


# direct methods
.method constructor <init>(LaM/am;LY/c;LaM/i;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, LaM/ao;->b:LaM/am;

    iput-object p3, p0, LaM/ao;->a:LaM/i;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 952
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 953
    iget-object v1, p0, LaM/ao;->a:LaM/i;

    invoke-static {v1}, LaM/am;->l(LaM/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 954
    return-void
.end method
