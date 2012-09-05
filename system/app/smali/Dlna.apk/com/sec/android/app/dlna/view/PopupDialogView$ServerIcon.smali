.class Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;
.super Ljava/lang/Thread;
.source "PopupDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;Lcom/sec/android/app/dlna/view/PopupDialogView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v2, 0x321

    .line 114
    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 115
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :goto_1f
    return-void

    .line 119
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getIconList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6f

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v3, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

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

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$502(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_51} :catch_87

    .line 130
    :goto_51
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$500(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    new-instance v2, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$1;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    :goto_63
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 123
    :cond_6f
    :try_start_6f
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFirstIcon()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$300(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$502(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_86
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6f .. :try_end_86} :catch_87

    goto :goto_51

    .line 126
    :catch_87
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$502(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_51

    .line 137
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_8f
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    new-instance v2, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon$2;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_63

    .line 146
    :cond_9a
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1f
.end method
