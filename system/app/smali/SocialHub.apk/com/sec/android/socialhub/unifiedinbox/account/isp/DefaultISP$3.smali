.class Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$3;
.super Ljava/lang/Object;
.source "DefaultISP.java"

# interfaces
.implements Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$3;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAccount(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "type"

    .prologue
    .line 339
    if-nez p1, :cond_3

    .line 362
    :cond_2
    :goto_2
    return-void

    .line 342
    :cond_3
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 344
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 346
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 350
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tecace.app.ACTION_ADD_ACCOUNT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "VALUE_ADD_ACCOUNT_TYPE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 357
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
