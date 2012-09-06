.class final Lcom/anddoes/launcher/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/EditShortcutActivity;

.field private b:Lcom/anddoes/launcher/ce;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ch;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 641
    :cond_15
    const/4 v0, 0x0

    .line 655
    :goto_16
    return-object v0

    .line 643
    :cond_17
    iget-object v0, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/anddoes/launcher/ce;

    iget-object v2, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {v1, v2, v3}, Lcom/anddoes/launcher/ce;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V

    iput-object v1, p0, Lcom/anddoes/launcher/ch;->b:Lcom/anddoes/launcher/ce;

    .line 646
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 648
    iget-object v0, p0, Lcom/anddoes/launcher/ch;->b:Lcom/anddoes/launcher/ce;

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 652
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 653
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 654
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_16
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 672
    if-ltz p2, :cond_a

    iget-object v0, p0, Lcom/anddoes/launcher/ch;->b:Lcom/anddoes/launcher/ce;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ce;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_b

    .line 691
    :cond_a
    :goto_a
    return-void

    .line 675
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/ch;->b:Lcom/anddoes/launcher/ce;

    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/ce;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/cf;

    .line 676
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 677
    const-string v2, "adw_theme"

    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 678
    const-string v2, "org.adw.launcher.icons.ACTION_PICK_ICON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_a

    .line 689
    :catch_3b
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v1, 0x7f060145

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 681
    :cond_4a
    iget-object v2, p0, Lcom/anddoes/launcher/ch;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const-class v3, Lcom/anddoes/launcher/IconPickerActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 682
    const-string v2, "com.anddoes.launcher.THEME_PACKAGE_NAME"

    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v2, "com.anddoes.launcher.THEME_TYPE"

    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v2, "com.anddoes.launcher.THEME_NAME"

    invoke-virtual {v0}, Lcom/anddoes/launcher/cf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_34
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 665
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 695
    return-void
.end method
