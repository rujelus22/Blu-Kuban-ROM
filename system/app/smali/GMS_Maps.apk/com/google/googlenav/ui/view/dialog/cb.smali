.class Lcom/google/googlenav/ui/view/dialog/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laz/f;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cb;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cb;->a:Laz/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cb;->a:Laz/f;

    invoke-virtual {v0}, Laz/f;->a()I

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    .line 458
    :goto_b
    if-eqz v0, :cond_3d

    const/16 v0, 0x335

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_13
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/16 v4, 0x34a

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    .line 463
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cb;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/bS;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/cc;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/googlenav/ui/view/dialog/cc;-><init>(Lcom/google/googlenav/ui/view/dialog/cb;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 478
    return-void

    :cond_3b
    move v0, v2

    .line 456
    goto :goto_b

    .line 458
    :cond_3d
    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
