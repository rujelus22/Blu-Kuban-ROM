.class Lcom/samsung/swift/install/InstallActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$1;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, installState:I
    const-string v3, "file"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, file:Ljava/lang/String;
    const-string v3, "progress"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .line 132
    .local v2, progress:S
    iget-object v3, p0, Lcom/samsung/swift/install/InstallActivity$1;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v3, v1, v0, v2}, Lcom/samsung/swift/install/InstallActivity;->update(ILjava/lang/String;S)V

    .line 133
    return-void
.end method
