.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 424
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 426
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/high16 v2, 0x13a0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 447
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v2

    const/16 v3, 0x2f1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 448
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.KIESWIFI_DISCONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, intent2:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 454
    return-void
.end method
