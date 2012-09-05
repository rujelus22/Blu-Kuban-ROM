.class Lcom/sprint/w/installer/PackUninstaller$8;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 852
    :try_start_1
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackUninstaller;->dismissDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_4d

    .line 855
    :goto_7
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mSwapPack:Z

    if-eqz v1, :cond_1e

    .line 856
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 857
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    .line 865
    :goto_1d
    return-void

    .line 858
    :cond_1e
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_3c

    .line 859
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v2, v2, Lcom/sprint/w/installer/PackUninstaller;->mKeptSomeItems:Z

    if-eqz v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 860
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    goto :goto_1d

    .line 862
    :cond_3c
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 863
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$8;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->reloadAll()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$1100(Lcom/sprint/w/installer/PackUninstaller;)V

    goto :goto_1d

    .line 853
    :catch_4d
    move-exception v1

    goto :goto_7
.end method
