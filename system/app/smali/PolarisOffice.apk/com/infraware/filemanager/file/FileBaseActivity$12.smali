.class Lcom/infraware/filemanager/file/FileBaseActivity$12;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1421
    const/16 v0, 0x3e8

    .line 1423
    .local v0, sleepTime:I
    int-to-long v1, v0

    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_4d

    .line 1426
    :goto_7
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->isUpdatable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1427
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1, v3}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateProgress(I)V

    .line 1429
    :cond_14
    const/16 v0, 0xa

    .line 1430
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v1, v3}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity;I)V

    .line 1431
    :goto_1b
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->isUpdatable()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1446
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateProgress(I)V

    .line 1447
    return-void

    .line 1434
    :cond_2a
    int-to-long v1, v0

    :try_start_2b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_4f

    .line 1438
    :goto_2e
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$2(Lcom/infraware/filemanager/file/FileBaseActivity;)I

    move-result v1

    const/16 v2, 0xa0

    if-ge v1, v2, :cond_4a

    .line 1440
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$2(Lcom/infraware/filemanager/file/FileBaseActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v1, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity;I)V

    .line 1441
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$12;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateProgress(I)V

    goto :goto_1b

    .line 1444
    :cond_4a
    const/16 v0, 0x3e8

    goto :goto_1b

    .line 1424
    :catch_4d
    move-exception v1

    goto :goto_7

    .line 1435
    :catch_4f
    move-exception v1

    goto :goto_2e
.end method
