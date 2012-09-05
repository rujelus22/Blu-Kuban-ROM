.class Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;
.super Ljava/lang/Object;
.source "BootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/BootCompletedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/BootCompletedReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/BootCompletedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method
