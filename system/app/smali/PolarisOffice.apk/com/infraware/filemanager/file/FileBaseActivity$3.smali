.class Lcom/infraware/filemanager/file/FileBaseActivity$3;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$3;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 396
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 397
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$3;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #calls: Lcom/infraware/filemanager/file/FileBaseActivity;->updateMedia()V
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$4(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    .line 400
    :goto_15
    return-void

    .line 399
    :cond_16
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$3;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateList()V

    goto :goto_15
.end method
