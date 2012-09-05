.class Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;
.super Landroid/content/BroadcastReceiver;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/oem/OemActionFactory$SamsungAction;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/oem/OemActionFactory$SamsungAction;

.field final synthetic val$finalCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/swype/android/oem/OemActionFactory$SamsungAction;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;->this$0:Lcom/swype/android/oem/OemActionFactory$SamsungAction;

    iput-object p2, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;->val$finalCtx:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "AxT9IME.isVisibleWindow"

    iget-object v2, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;->this$0:Lcom/swype/android/oem/OemActionFactory$SamsungAction;

    #getter for: Lcom/swype/android/oem/OemActionFactory$SamsungAction;->isSwypeVisible:Z
    invoke-static {v2}, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->access$000(Lcom/swype/android/oem/OemActionFactory$SamsungAction;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;->val$finalCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
