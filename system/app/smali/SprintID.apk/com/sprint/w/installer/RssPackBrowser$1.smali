.class Lcom/sprint/w/installer/RssPackBrowser$1;
.super Ljava/lang/Thread;
.source "RssPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackBrowser;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mSyncLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$000(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_7
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #calls: Lcom/sprint/w/installer/RssPackBrowser;->loadFeed()V
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$100(Lcom/sprint/w/installer/RssPackBrowser;)V

    .line 90
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    .line 91
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    new-instance v1, Lcom/sprint/w/installer/RssPackBrowser$1$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/RssPackBrowser$1$1;-><init>(Lcom/sprint/w/installer/RssPackBrowser$1;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void

    .line 90
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
