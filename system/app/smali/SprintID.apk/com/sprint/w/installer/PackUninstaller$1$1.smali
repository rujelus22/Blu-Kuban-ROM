.class Lcom/sprint/w/installer/PackUninstaller$1$1;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackUninstaller$1;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller$1;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v2, v1, Lcom/sprint/w/installer/PackUninstaller;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_7
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_4b

    .line 122
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mSwapPack:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_44

    :cond_1f
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_44

    .line 124
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v4}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sprint/w/installer/PackUninstaller;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackUninstaller;->finish()V

    .line 126
    monitor-exit v2

    .line 155
    :goto_43
    return-void

    .line 128
    :cond_44
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->initListView()V
    invoke-static {v1}, Lcom/sprint/w/installer/PackUninstaller;->access$200(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 130
    :cond_4b
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-eqz v1, :cond_fe

    .line 132
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v3, v3, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackVersion:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v4, v4, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v3, v3, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    :goto_a7
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_126

    .line 142
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, t:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    if-nez v1, :cond_122

    const v1, 0x7f06001d

    :goto_cb
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonCheckAll:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonUncheckAll:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    const v3, 0x7f060046

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 149
    monitor-exit v2

    goto/16 :goto_43

    .line 154
    .end local v0           #t:Landroid/widget/TextView;
    :catchall_fb
    move-exception v1

    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_7 .. :try_end_fd} :catchall_fb

    throw v1

    .line 136
    :cond_fe
    :try_start_fe
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackName:Landroid/widget/TextView;

    const v3, 0x7f06000d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackVersion:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mPackIcon:Landroid/widget/ImageView;

    const v3, 0x7f020001

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a7

    .line 143
    .restart local v0       #t:Landroid/widget/TextView;
    :cond_122
    const v1, 0x7f06001e

    goto :goto_cb

    .line 151
    .end local v0           #t:Landroid/widget/TextView;
    :cond_126
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonCheckAll:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonUncheckAll:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$1$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$1;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    monitor-exit v2
    :try_end_145
    .catchall {:try_start_fe .. :try_end_145} :catchall_fb

    goto/16 :goto_43
.end method
