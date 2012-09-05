.class Lcom/google/googlenav/ui/wizard/hj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ho;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/hi;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hi;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hi;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hi;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hi;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/hk;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hk;-><init>(Lcom/google/googlenav/ui/wizard/hj;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hj;->b:Lcom/google/googlenav/ui/wizard/hi;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hi;->a(Lcom/google/googlenav/ui/wizard/hi;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hj;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
