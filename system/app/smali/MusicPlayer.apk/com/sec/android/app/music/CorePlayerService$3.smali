.class Lcom/sec/android/app/music/CorePlayerService$3;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$1200(Lcom/sec/android/app/music/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$1200(Lcom/sec/android/app/music/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 768
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$1200(Lcom/sec/android/app/music/CorePlayerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 769
    return-void

    .line 765
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$3;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->access$1202(Lcom/sec/android/app/music/CorePlayerService;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_13
.end method
