.class Lcom/infraware/polarisoffice/search/SearchFileList$1;
.super Ljava/lang/Object;
.source "SearchFileList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/search/SearchFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/SearchFileList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #getter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_nAction:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$0(Lcom/infraware/polarisoffice/search/SearchFileList;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 114
    :goto_9
    return-void

    .line 103
    :pswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$1(Lcom/infraware/polarisoffice/search/SearchFileList;I)V

    .line 104
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->downloadWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$2(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    goto :goto_9

    .line 107
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/search/SearchFileList;->m_nDownloadMode:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$1(Lcom/infraware/polarisoffice/search/SearchFileList;I)V

    .line 108
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->downloadWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$2(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    goto :goto_9

    .line 111
    :pswitch_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$1;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    #calls: Lcom/infraware/polarisoffice/search/SearchFileList;->openWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/SearchFileList;->access$3(Lcom/infraware/polarisoffice/search/SearchFileList;)V

    goto :goto_9

    .line 100
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_a
        :pswitch_16
        :pswitch_22
    .end packed-switch
.end method
