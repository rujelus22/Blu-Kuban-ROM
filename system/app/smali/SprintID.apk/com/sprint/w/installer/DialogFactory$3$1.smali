.class Lcom/sprint/w/installer/DialogFactory$3$1;
.super Ljava/lang/Object;
.source "DialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DialogFactory$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/DialogFactory$3;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DialogFactory$3;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    const v10, 0x7f060089

    const/4 v9, 0x0

    .line 84
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$t:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_26

    .line 86
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_25
    return-void

    .line 90
    :cond_26
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 91
    :cond_3e
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$d:Landroid/app/AlertDialog;

    const v8, 0x7f0c0084

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 92
    .local v6, v:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, username:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$d:Landroid/app/AlertDialog;

    const v8, 0x7f0c0086

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #v:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 94
    .restart local v6       #v:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".spk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 98
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    const-class v8, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, i:Landroid/content/Intent;
    const-string v7, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    const-string v7, "packName"

    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v8, v8, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    const v9, 0x7f06003a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v7, "userid"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v7, "password"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v7, "skipTc"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    :cond_ab
    :goto_ab
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    .end local v6           #v:Landroid/widget/TextView;
    :goto_b2
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_25

    .line 110
    .restart local v3       #password:Ljava/lang/String;
    .restart local v5       #username:Ljava/lang/String;
    .restart local v6       #v:Landroid/widget/TextView;
    :cond_bb
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    const-class v8, Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v2       #i:Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_ab

    .line 113
    const-string v7, "username"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v7, "password"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_ab

    .line 120
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    .end local v6           #v:Landroid/widget/TextView;
    :cond_de
    const-string v7, "config:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 122
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_b2

    .line 125
    :cond_f1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, fn:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_128

    .line 128
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 131
    :cond_128
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sprint.ACTION_INSTALL_FROM_FILE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .restart local v2       #i:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const-string v7, "packName"

    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v8, v8, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    const v9, 0x7f06008a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    const-class v8, Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    iget-object v7, p0, Lcom/sprint/w/installer/DialogFactory$3$1;->this$0:Lcom/sprint/w/installer/DialogFactory$3;

    iget-object v7, v7, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b2
.end method
