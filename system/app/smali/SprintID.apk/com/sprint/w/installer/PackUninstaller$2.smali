.class Lcom/sprint/w/installer/PackUninstaller$2;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 163
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->isUninstallNeeded()Z
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$300(Lcom/sprint/w/installer/PackUninstaller;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/PackUninstaller;->showDialog(I)V

    .line 177
    :goto_e
    return-void

    .line 167
    :cond_f
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 168
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    goto :goto_e

    .line 170
    :cond_30
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4c

    .line 171
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 172
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    goto :goto_e

    .line 174
    :cond_4c
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$2;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    goto :goto_e
.end method
