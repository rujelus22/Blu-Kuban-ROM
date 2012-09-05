.class Lcom/google/android/finsky/activities/AuthenticatedActivity$5;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$accounts:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 707
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->val$accounts:[Landroid/accounts/Account;

    aget-object v1, v1, p2

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 710
    .local v0, newAccount:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$000(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 711
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "switchAccount"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    .line 714
    const-string v1, "b/5160617: Switching account to %s on user action"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;)V

    .line 721
    :goto_3a
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->removeDialog(I)V

    .line 722
    return-void

    .line 718
    :cond_40
    sput-boolean v4, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    goto :goto_3a
.end method
