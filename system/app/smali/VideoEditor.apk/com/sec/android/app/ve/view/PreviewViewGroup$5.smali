.class Lcom/sec/android/app/ve/view/PreviewViewGroup$5;
.super Landroid/os/Handler;
.source "PreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 1707
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Isnide HandleMesasge ->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1711
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b2

    .line 1743
    :cond_1a
    :goto_1a
    :sswitch_1a
    return-void

    .line 1713
    :sswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$52(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001f

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$53(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/widget/FrameLayout;)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->setTitleHelveticaNeue()V
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$54(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 1715
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 1717
    const-string v0, "making no music visble afer inflation"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoMusicVisible()V

    goto :goto_1a

    .line 1722
    :sswitch_49
    const-string v0, "This is before launching music album songs picker view"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1723
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$52(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030021

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;
    invoke-static {v1, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$53(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/widget/FrameLayout;)V

    goto :goto_1a

    .line 1729
    :sswitch_65
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$55(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$55(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$24()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1731
    const-string v0, "Wakelock release::"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$55(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseWakeLock and isHeld -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$55(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$56(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_1a

    .line 1711
    nop

    :sswitch_data_b2
    .sparse-switch
        0xc9 -> :sswitch_49
        0xcb -> :sswitch_1b
        0x190 -> :sswitch_65
        0x191 -> :sswitch_1a
    .end sparse-switch
.end method
