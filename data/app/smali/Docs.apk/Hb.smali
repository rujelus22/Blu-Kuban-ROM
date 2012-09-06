.class public LHb;
.super Ljava/lang/Object;
.source "DocsUpgradedToDriveDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, LHb;->a:Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;

    iput-object p2, p0, LHb;->a:Landroid/content/Context;

    iput-object p3, p0, LHb;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, LHb;->a:Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, LHb;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, LHb;->a:Landroid/content/Context;

    iget-object v1, p0, LHb;->a:Ljava/lang/String;

    sget-object v2, Lhf;->b:Lhf;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    iget-object v1, p0, LHb;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
