.class Lcom/sec/android/app/videoplayer/activity/MainTab$5;
.super Ljava/lang/Object;
.source "MainTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$5;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$5;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 222
    .local v1, toast:Landroid/widget/Toast;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$5;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08007a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 227
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_1f
    return-void

    .line 224
    :catch_20
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MainTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scannerRunnable run - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
