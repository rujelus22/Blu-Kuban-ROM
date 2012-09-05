.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;
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
    .line 295
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, sendIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 303
    return-void
.end method
