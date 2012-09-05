.class Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;
.super Landroid/os/Handler;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 142
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_58

    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 183
    :cond_9
    :goto_9
    return-void

    .line 144
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 145
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 146
    .local v2, myCN:Landroid/content/ComponentName;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_2a

    .line 149
    .local v1, hasFocus:Z
    :goto_18
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 150
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;->onMiniAppFocusChanged(Landroid/content/ComponentName;Z)Z

    goto :goto_9

    .line 146
    .end local v1           #hasFocus:Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_18

    .line 157
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #myCN:Landroid/content/ComponentName;
    :pswitch_2c
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 158
    .local v3, x:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 161
    .local v4, y:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 162
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;->onMoveRequested(II)Z

    goto :goto_9

    .line 169
    .end local v3           #x:I
    .end local v4           #y:I
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 172
    .restart local v0       #cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 173
    iget-object v5, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    invoke-static {v5}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;->onCloseRequested(Landroid/content/ComponentName;)Z

    goto :goto_9

    .line 142
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_a
        :pswitch_2c
        :pswitch_42
    .end packed-switch
.end method
