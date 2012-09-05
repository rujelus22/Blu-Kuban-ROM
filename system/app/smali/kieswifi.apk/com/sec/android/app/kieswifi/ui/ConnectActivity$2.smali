.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->viewSetting()V
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
    .line 269
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 272
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, sendIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 289
    return-void
.end method
