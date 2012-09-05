.class Lcom/infraware/filemanager/file/FileBaseActivity$11;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_oFileList:Ljava/util/ArrayList;

    .line 1400
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nStorageType:I

    packed-switch v0, :pswitch_data_30

    .line 1414
    :goto_10
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostUpdate()V

    .line 1415
    return-void

    .line 1403
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->makeRootList()V

    goto :goto_10

    .line 1406
    :pswitch_1c
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->makeLocalFileList(Ljava/lang/String;)V

    goto :goto_10

    .line 1410
    :pswitch_26
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$11;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->makeWebFileList(Ljava/lang/String;)V

    goto :goto_10

    .line 1400
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1c
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method
