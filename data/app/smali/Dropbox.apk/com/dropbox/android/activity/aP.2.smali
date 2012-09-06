.class final Lcom/dropbox/android/activity/aP;
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
    .line 125
    iput-object p1, p0, Lcom/dropbox/android/activity/aP;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/android/activity/aP;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/dropbox/android/activity/aP;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-static {v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->b(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v1, "account_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 130
    const-string v1, "account_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aN;

    .line 131
    iget-object v1, p0, Lcom/dropbox/android/activity/aP;->a:Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    invoke-static {v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->c(Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-static {v1, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity;Lcom/dropbox/android/activity/aN;)V

    .line 133
    :cond_29
    return-void
.end method
