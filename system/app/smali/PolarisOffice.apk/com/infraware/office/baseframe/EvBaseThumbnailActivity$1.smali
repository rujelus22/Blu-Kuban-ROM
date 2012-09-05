.class Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;
.super Ljava/lang/Object;
.source "EvBaseThumbnailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, index:I
    :goto_2
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mFinish:Z
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 68
    :goto_a
    return-void

    .line 49
    :cond_b
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5e

    .line 51
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 53
    :try_start_26
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    const/4 v5, 0x1

    #setter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z
    invoke-static {v3, v5}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;Z)V

    .line 51
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_66

    .line 57
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 58
    .local v2, msg:Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 59
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    invoke-static {v3}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .end local v2           #msg:Landroid/os/Message;
    :cond_5e
    const-wide/16 v3, 0x64

    :try_start_60
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_2

    .line 64
    :catch_64
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_a

    .line 51
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_66
    move-exception v3

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v3
.end method
