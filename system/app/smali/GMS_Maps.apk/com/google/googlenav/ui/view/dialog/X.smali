.class Lcom/google/googlenav/ui/view/dialog/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;Z)V

    .line 254
    const/16 v0, 0x258

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 256
    return-void
.end method

.method public a(Lam/n;)V
    .registers 4
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;I)Lam/d;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lam/n;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/d;->a(Ljava/util/List;)V

    .line 244
    return-void
.end method

.method public b(Lam/n;)V
    .registers 5
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:I

    invoke-virtual {p1}, Lam/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;ILjava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/s;->b(Lcom/google/googlenav/ui/view/dialog/s;I)V

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:Lcom/google/googlenav/ui/view/dialog/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;Z)V

    .line 250
    return-void
.end method
