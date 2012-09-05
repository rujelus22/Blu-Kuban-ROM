.class Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP$1;
.super Ljava/lang/Object;
.source "LatinISP.java"

# interfaces
.implements Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAccount(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "type"

    .prologue
    .line 131
    if-nez p1, :cond_3

    .line 151
    .end local p1
    :cond_2
    :goto_2
    return-void

    .line 134
    .restart local p1
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.setup.AccountSetupBasics"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "com.android.email.AccountSetupBasics.ispType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 139
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 141
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 144
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 146
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
