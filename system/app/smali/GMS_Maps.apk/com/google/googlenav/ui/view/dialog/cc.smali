.class Lcom/google/googlenav/ui/view/dialog/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/cb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cb;[Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cc;->c:Lcom/google/googlenav/ui/view/dialog/cb;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cc;->a:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/cc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cc;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    const/16 v1, 0x34a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cc;->c:Lcom/google/googlenav/ui/view/dialog/cb;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cb;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cc;->c:Lcom/google/googlenav/ui/view/dialog/cb;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/cb;->a:Laz/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/G;->b(Landroid/app/Dialog;)V

    .line 475
    :cond_21
    :goto_21
    return-void

    .line 471
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cc;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 472
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cc;->c:Lcom/google/googlenav/ui/view/dialog/cb;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cb;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cc;->c:Lcom/google/googlenav/ui/view/dialog/cb;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/cb;->a:Laz/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bO;->c(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/G;->b(Landroid/app/Dialog;)V

    goto :goto_21
.end method
