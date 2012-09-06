.class Lcom/google/commerce/wireless/topiary/O;
.super Lcom/google/commerce/wireless/topiary/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/commerce/wireless/topiary/J;

.field final synthetic c:Lbk/p;

.field final synthetic d:Lbk/p;

.field final synthetic e:Lcom/google/commerce/wireless/topiary/H;

.field final synthetic f:Lcom/google/commerce/wireless/topiary/N;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/N;Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;Lcom/google/commerce/wireless/topiary/H;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/O;->f:Lcom/google/commerce/wireless/topiary/N;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/O;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/commerce/wireless/topiary/O;->b:Lcom/google/commerce/wireless/topiary/J;

    iput-object p4, p0, Lcom/google/commerce/wireless/topiary/O;->c:Lbk/p;

    iput-object p5, p0, Lcom/google/commerce/wireless/topiary/O;->d:Lbk/p;

    iput-object p6, p0, Lcom/google/commerce/wireless/topiary/O;->e:Lcom/google/commerce/wireless/topiary/H;

    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/O;->f:Lcom/google/commerce/wireless/topiary/N;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/O;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/O;->b:Lcom/google/commerce/wireless/topiary/J;

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/O;->c:Lbk/p;

    iget-object v4, p0, Lcom/google/commerce/wireless/topiary/O;->d:Lbk/p;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/commerce/wireless/topiary/N;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;)Lbk/p;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/O;->b:Lcom/google/commerce/wireless/topiary/J;

    invoke-virtual {v1}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v1

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->a:Lcom/google/commerce/wireless/topiary/M;

    if-ne v1, v2, :cond_1e

    .line 68
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/O;->e:Lcom/google/commerce/wireless/topiary/H;

    invoke-interface {v1, v0}, Lcom/google/commerce/wireless/topiary/H;->a(Lbk/p;)V

    .line 72
    :goto_1d
    return-void

    .line 70
    :cond_1e
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/O;->e:Lcom/google/commerce/wireless/topiary/H;

    invoke-interface {v0}, Lcom/google/commerce/wireless/topiary/H;->a()V

    goto :goto_1d
.end method
