.class Lcom/google/googlenav/ui/wizard/dZ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/n;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/dY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/widget/EditText;Lcom/google/googlenav/prefetch/android/n;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dZ;->c:Lcom/google/googlenav/ui/wizard/dY;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dZ;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dZ;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dZ;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dZ;->c:Lcom/google/googlenav/ui/wizard/dY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x2b1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dZ;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dZ;->c:Lcom/google/googlenav/ui/wizard/dY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x2b3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dZ;->c:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ed;->a()V

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/ea;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ea;-><init>(Lcom/google/googlenav/ui/wizard/dZ;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    goto :goto_25
.end method
