.class final Lcom/dropbox/android/activity/aO;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dropbox/android/activity/aO;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/dropbox/android/activity/aO;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-static {v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 120
    iget-object v0, p0, Lcom/dropbox/android/activity/aO;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/util/ao;->a:Lcom/dropbox/android/util/ao;

    iget-object v2, p0, Lcom/dropbox/android/activity/aO;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/android/util/ao;->a(Landroid/app/Activity;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    :cond_1f
    return-void
.end method
