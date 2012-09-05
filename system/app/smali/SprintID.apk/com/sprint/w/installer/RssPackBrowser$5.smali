.class Lcom/sprint/w/installer/RssPackBrowser$5;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
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
    .line 278
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$5;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$5;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mSyncLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$000(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 281
    :try_start_7
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$5;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #calls: Lcom/sprint/w/installer/RssPackBrowser;->updateListView()V
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$500(Lcom/sprint/w/installer/RssPackBrowser;)V

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
