.class Lcom/android/sprintmenu/DUNEnable$1;
.super Landroid/content/BroadcastReceiver;
.source "DUNEnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/DUNEnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DUNEnable;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DUNEnable;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/sprintmenu/DUNEnable$1;->this$0:Lcom/android/sprintmenu/DUNEnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable$1;->this$0:Lcom/android/sprintmenu/DUNEnable;

    #getter for: Lcom/android/sprintmenu/DUNEnable;->enabled:Z
    invoke-static {v1}, Lcom/android/sprintmenu/DUNEnable;->access$000(Lcom/android/sprintmenu/DUNEnable;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 50
    const-string v0, "com.android.phone.DisableDUN"

    .line 51
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable$1;->this$0:Lcom/android/sprintmenu/DUNEnable;

    #getter for: Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/sprintmenu/DUNEnable;->access$100(Lcom/android/sprintmenu/DUNEnable;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    :goto_2a
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable$1;->this$0:Lcom/android/sprintmenu/DUNEnable;

    #calls: Lcom/android/sprintmenu/DUNEnable;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/sprintmenu/DUNEnable;->access$200(Lcom/android/sprintmenu/DUNEnable;Ljava/lang/String;)V

    .line 62
    .end local v0           #action:Ljava/lang/String;
    :cond_2f
    return-void

    .line 53
    .restart local v0       #action:Ljava/lang/String;
    :cond_30
    const-string v0, "com.android.phone.EnableDUN"

    .line 54
    iget-object v1, p0, Lcom/android/sprintmenu/DUNEnable$1;->this$0:Lcom/android/sprintmenu/DUNEnable;

    #getter for: Lcom/android/sprintmenu/DUNEnable;->mButtonDataDun:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/sprintmenu/DUNEnable;->access$100(Lcom/android/sprintmenu/DUNEnable;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2a
.end method
