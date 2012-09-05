.class Lcom/samsung/swift/install/InstallActivity$7$1;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/install/InstallActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/install/InstallActivity$7;


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$7$1;->this$1:Lcom/samsung/swift/install/InstallActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/install/InstallActivity;->SETWORLDREASABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "worldReadable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/samsung/swift/install/InstallActivity$7$1;->this$1:Lcom/samsung/swift/install/InstallActivity$7;

    iget-object v1, v1, Lcom/samsung/swift/install/InstallActivity$7;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/swift/install/InstallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    return-void
.end method
