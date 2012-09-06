.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

.field final synthetic val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$activeAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->C2DM_MESSAGE_RECEIVED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Landroid/os/Bundle;)V

    .line 1310
    return-void
.end method
