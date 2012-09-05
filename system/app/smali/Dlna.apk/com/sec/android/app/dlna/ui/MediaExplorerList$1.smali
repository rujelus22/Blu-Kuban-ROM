.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;
.super Landroid/os/Handler;
.source "MediaExplorerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 245
    :goto_5
    return-void

    .line 230
    :pswitch_6
    const-string v0, "DLNA"

    const-string v1, "START_MEDIA_EXPLORER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeWorkThread()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    goto :goto_5

    .line 235
    :pswitch_13
    const-string v0, "DLNA"

    const-string v1, "CREATE_GUI_HANDLER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeGuiHandler()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    goto :goto_5

    .line 240
    :pswitch_20
    const-string v0, "DLNA"

    const-string v1, "CREATE_MEDIA_EXPLORE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$1;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeInitExplorer()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    goto :goto_5

    .line 228
    nop

    :pswitch_data_2e
    .packed-switch 0x3e9
        :pswitch_20
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method
