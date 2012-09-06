.class public Lhu;
.super Ljava/lang/Object;
.source "VersionCheckDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:LFX;

    iget-object v1, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->c:Ljava/lang/String;

    const-string v2, "market://search?q=pname:com.google.android.apps.docs"

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    :try_start_28
    iget-object v2, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_31} :catch_3b

    .line 107
    :goto_31
    iget-object v0, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 108
    return-void

    .line 101
    :catch_3b
    move-exception v0

    .line 102
    const-string v2, "VersionCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch upgrade link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lhu;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    iget-object v2, v2, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:LXJ;

    const-string v3, "Google Docs was unable to launch the upgrade link: %1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method
