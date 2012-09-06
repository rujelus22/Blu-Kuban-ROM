.class public Lpi;
.super Ljava/lang/Object;
.source "IntroDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lpi;->a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

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
    iget-object v0, p0, Lpi;->a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Lpi;->a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lpi;->a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->terms_of_service_url_drivev2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lpi;->a:Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
