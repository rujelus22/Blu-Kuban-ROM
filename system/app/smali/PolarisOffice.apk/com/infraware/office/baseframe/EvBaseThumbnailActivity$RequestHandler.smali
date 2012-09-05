.class Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
.super Landroid/os/Handler;
.source "EvBaseThumbnailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v3, 0x64

    .line 78
    if-nez p1, :cond_5

    .line 97
    :goto_4
    return-void

    .line 81
    :cond_5
    const-string v0, "EvBaseThumbnailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestHandler - Code["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Page["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    goto :goto_4

    .line 85
    :pswitch_33
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_3a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v1

    goto :goto_4

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4b

    throw v0

    .line 91
    :pswitch_4e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v5, p1, Landroid/os/Message;->arg1:I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IThumbnail(IIIII)V

    goto :goto_4

    .line 94
    :pswitch_5d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;Z)V

    goto :goto_4

    .line 82
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_33
        :pswitch_4e
        :pswitch_5d
    .end packed-switch
.end method
