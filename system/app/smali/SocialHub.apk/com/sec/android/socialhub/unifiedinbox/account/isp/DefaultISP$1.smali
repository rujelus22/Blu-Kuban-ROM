.class Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$1;
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
    .line 253
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAccount(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 256
    if-nez p1, :cond_3

    .line 277
    .end local p1
    :cond_2
    :goto_2
    return-void

    .line 259
    .restart local p1
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v3, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v3, "com.android.email.CREATE_ACCOUNT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 265
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 267
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 270
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 272
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
