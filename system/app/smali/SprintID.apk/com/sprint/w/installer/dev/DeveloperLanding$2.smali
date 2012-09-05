.class Lcom/sprint/w/installer/dev/DeveloperLanding$2;
.super Ljava/lang/Object;
.source "DeveloperLanding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/dev/DeveloperLanding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x191

    .line 123
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 124
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    #calls: Lcom/sprint/w/installer/dev/DeveloperLanding;->buildFileList()V
    invoke-static {v0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->access$000(Lcom/sprint/w/installer/dev/DeveloperLanding;)V

    .line 125
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v0, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mIDHomeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 126
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v0, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v0, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_34

    .line 127
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/dev/DeveloperLanding;->showDialog(I)V

    .line 143
    :goto_33
    return-void

    .line 130
    :cond_34
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/dev/DeveloperLanding;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SprintID"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/dev/DeveloperLanding;->showDialog(I)V

    goto :goto_33

    .line 135
    :cond_51
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    const v2, 0x7f0600b8

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/dev/DeveloperLanding;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SprintID"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/dev/DeveloperLanding;->showDialog(I)V

    goto :goto_33

    .line 140
    :cond_6e
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    const v2, 0x7f0600b9

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/dev/DeveloperLanding;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-virtual {v0, v4}, Lcom/sprint/w/installer/dev/DeveloperLanding;->showDialog(I)V

    goto :goto_33
.end method
