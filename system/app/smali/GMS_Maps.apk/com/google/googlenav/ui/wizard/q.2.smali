.class Lcom/google/googlenav/ui/wizard/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ah;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/o;Lcom/google/googlenav/ah;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-lez v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    :cond_34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    new-instance v2, Lcom/google/googlenav/aU;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v3}, Lcom/google/googlenav/aU;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v4}, Lcom/google/googlenav/aU;->f()Lam/b;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/googlenav/aU;-><init>(I[Ljava/lang/String;Lam/b;)V

    iput-object v2, v1, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/q;->b:Lcom/google/googlenav/ui/wizard/o;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->k()V

    :cond_78
    return-void
.end method
