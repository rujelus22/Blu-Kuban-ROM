.class Lcom/android/email/activity/MessageViewFragmentBase$10;
.super Landroid/content/BroadcastReceiver;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 6749
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6753
    const-string v2, "Email"

    const-string v3, "[MEMO] Broadcast received!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6755
    if-eqz p2, :cond_74

    .line 6756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6757
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_6c

    .line 6758
    const-string v2, "android.intent.action.REQ_INFO_FROM_MINI_MEMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 6759
    const-string v2, "Email"

    const-string v3, "[MEMO] android.intent.action.REQ_INFO_FROM_MINI_MEMO Action received!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6761
    const-string v2, "ComponentName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6762
    .local v1, componentName:Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 6763
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MEMO] componentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6764
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "MessageView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 6766
    :cond_4e
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->onMemoPlus()V

    .line 6784
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #componentName:Ljava/lang/String;
    :goto_53
    return-void

    .line 6768
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #componentName:Ljava/lang/String;
    :cond_54
    const-string v2, "Email"

    const-string v3, "[MEMO] componentName is not matched with Email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 6772
    :cond_5c
    const-string v2, "Email"

    const-string v3, "[MEMO] componentName is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 6775
    .end local v1           #componentName:Ljava/lang/String;
    :cond_64
    const-string v2, "Email"

    const-string v3, "[MEMO] request info is not matched"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 6778
    :cond_6c
    const-string v2, "Email"

    const-string v3, "[MEMO] No Action from memo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 6781
    .end local v0           #action:Ljava/lang/String;
    :cond_74
    const-string v2, "Email"

    const-string v3, "[MEMO] Intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method
