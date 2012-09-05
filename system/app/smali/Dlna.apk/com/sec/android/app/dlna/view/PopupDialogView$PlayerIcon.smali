.class Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;
.super Ljava/lang/Thread;
.source "PopupDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;Lcom/sec/android/app/dlna/view/PopupDialogView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 75
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :goto_15
    return-void

    .line 79
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_8b

    .line 80
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getIconList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6b

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v3, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getIconList()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$300(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$202(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_4d} :catch_83

    .line 94
    :goto_4d
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$200(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    new-instance v2, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$1;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    :goto_5f
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x323

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_15

    .line 84
    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFirstIcon()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$300(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$202(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_82
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6b .. :try_end_82} :catch_83

    goto :goto_4d

    .line 90
    :catch_83
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$202(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_4d

    .line 88
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_8b
    :try_start_8b
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFirstIcon()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$300(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$202(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_9e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b .. :try_end_9e} :catch_83

    goto :goto_4d

    .line 101
    :cond_9f
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    new-instance v2, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon$2;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5f
.end method
