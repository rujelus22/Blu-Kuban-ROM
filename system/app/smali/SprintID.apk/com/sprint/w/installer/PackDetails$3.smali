.class Lcom/sprint/w/installer/PackDetails$3;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 127
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackDetails;->mFromFile:Z

    if-eqz v1, :cond_15

    .line 128
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackDetails;->showDialog(I)V

    .line 143
    :cond_14
    :goto_14
    return-void

    .line 129
    :cond_15
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    const-string v1, "packName"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "extra.IS_DEFAULT"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v1, "skipTc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$3;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/PackDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method
