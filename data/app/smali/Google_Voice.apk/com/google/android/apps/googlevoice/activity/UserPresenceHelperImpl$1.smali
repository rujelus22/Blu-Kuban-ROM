.class Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UserPresenceHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;-><init>(Lcom/google/android/apps/googlevoice/system/KeyguardManagerProxy;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;->this$0:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 40
    invoke-static {}, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl;->access$000()Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "Keyguard removed, running now"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelperImpl$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 43
    :cond_12
    return-void
.end method
