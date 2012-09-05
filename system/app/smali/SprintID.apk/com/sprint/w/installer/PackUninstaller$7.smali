.class Lcom/sprint/w/installer/PackUninstaller$7;
.super Ljava/lang/Thread;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller;->uninstallSelected()V
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
    .line 768
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 771
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v6, aRingtones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackUninstaller$Item;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v7, aWallpapers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackUninstaller$Item;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v5, aApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackUninstaller$Item;>;"
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 776
    .local v8, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v1, :cond_2b

    .line 777
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 778
    :cond_2b
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_17

    .line 779
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/sprint/w/installer/PackUninstaller;->mKeptSomeItems:Z

    goto :goto_17

    .line 782
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_37
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3f
    :goto_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 783
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v1, :cond_53

    .line 784
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 785
    :cond_53
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_3f

    .line 786
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/sprint/w/installer/PackUninstaller;->mKeptSomeItems:Z

    goto :goto_3f

    .line 789
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_5f
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_67
    :goto_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 790
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v1, :cond_7b

    .line 791
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 792
    :cond_7b
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-boolean v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_67

    .line 793
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/sprint/w/installer/PackUninstaller;->mKeptSomeItems:Z

    goto :goto_67

    .line 797
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v1, v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v1, v12

    int-to-float v10, v1

    .line 798
    .local v10, tItemCnt:F
    const/4 v11, 0x0

    .line 800
    .local v11, tItemsRemoved:F
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 801
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v14, 0x7f060051

    invoke-virtual {v13, v14}, Lcom/sprint/w/installer/PackUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x3f80

    add-float/2addr v11, v13

    div-float v13, v11, v10

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    float-to-int v13, v13

    #calls: Lcom/sprint/w/installer/PackUninstaller;->setProgressMessage(Ljava/lang/String;I)V
    invoke-static {v1, v12, v13}, Lcom/sprint/w/installer/PackUninstaller;->access$600(Lcom/sprint/w/installer/PackUninstaller;Ljava/lang/String;I)V

    .line 802
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->uninstallRingtone(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    invoke-static {v1, v8}, Lcom/sprint/w/installer/PackUninstaller;->access$700(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V

    goto :goto_9b

    .line 805
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_e3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_110

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 806
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v12, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v13, 0x7f06004f

    invoke-virtual {v12, v13}, Lcom/sprint/w/installer/PackUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x3f80

    add-float/2addr v11, v13

    div-float v13, v11, v10

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    float-to-int v13, v13

    #calls: Lcom/sprint/w/installer/PackUninstaller;->setProgressMessage(Ljava/lang/String;I)V
    invoke-static {v1, v12, v13}, Lcom/sprint/w/installer/PackUninstaller;->access$600(Lcom/sprint/w/installer/PackUninstaller;Ljava/lang/String;I)V

    .line 807
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->uninstallWallpaper(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    invoke-static {v1, v8}, Lcom/sprint/w/installer/PackUninstaller;->access$800(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V

    goto :goto_e7

    .line 810
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_134

    .line 811
    move v3, v10

    .line 812
    .local v3, tIC:F
    move v2, v11

    .line 813
    .local v2, tIR:F
    new-instance v4, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v4}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    .line 814
    .local v4, conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$7$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/PackUninstaller$7$1;-><init>(Lcom/sprint/w/installer/PackUninstaller$7;FFLcom/sprint/w/installer/service/SprintIDServiceConnection;Ljava/util/ArrayList;)V

    .line 835
    .local v0, callback:Ljava/lang/Runnable;
    invoke-virtual {v4, v0}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 837
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v4, v13}, Lcom/sprint/w/installer/PackUninstaller;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 842
    .end local v0           #callback:Ljava/lang/Runnable;
    .end local v2           #tIR:F
    .end local v3           #tIC:F
    .end local v4           #conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    :goto_133
    return-void

    .line 839
    :cond_134
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v12, p0, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v12, v12, Lcom/sprint/w/installer/PackUninstaller;->mUninstallAllDone:Ljava/lang/Runnable;

    invoke-virtual {v1, v12}, Lcom/sprint/w/installer/PackUninstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_133
.end method
