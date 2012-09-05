.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$args:Landroid/os/Bundle;

.field private final synthetic val$etext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/widget/EditText;Landroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->val$etext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->val$args:Landroid/os/Bundle;

    .line 1855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1858
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v9, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v8, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 1861
    :try_start_7
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->val$etext:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1862
    .local v1, chars:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1865
    .local v5, projectName:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v7

    .line 1866
    .local v7, tList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    if-eqz v7, :cond_5b

    .line 1867
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1868
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1869
    const-string v10, ".vep"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1867
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1870
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1871
    .local v4, iterator:Ljava/util/Iterator;
    :cond_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_db

    .line 1897
    .end local v4           #iterator:Ljava/util/Iterator;
    :cond_5b
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->val$args:Landroid/os/Bundle;

    if-eqz v8, :cond_121

    .line 1898
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->val$args:Landroid/os/Bundle;

    const-string v9, "dialog"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x12

    if-ne v8, v9, :cond_c8

    .line 1900
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 1899
    invoke-static {v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v8

    .line 1901
    new-instance v9, Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v10, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1902
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v11

    .line 1903
    invoke-virtual {v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1904
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1905
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1906
    const-string v11, ".vep"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1902
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1906
    const/4 v11, 0x0

    .line 1900
    invoke-virtual {v8, v9, v10, v5, v11}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 1907
    .local v2, copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/ve/pm/ProjectManager;->deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1908
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1909
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 1910
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetTranscode()V
    invoke-static {v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$23(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1930
    .end local v2           #copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_c8
    :goto_c8
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1931
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-boolean v8, v8, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->createNew:Z

    if-nez v8, :cond_127

    .line 1932
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 1945
    .end local v1           #chars:Landroid/text/Editable;
    .end local v5           #projectName:Ljava/lang/String;
    .end local v7           #tList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :goto_da
    return-void

    .line 1873
    .restart local v1       #chars:Landroid/text/Editable;
    .restart local v4       #iterator:Ljava/util/Iterator;
    .restart local v5       #projectName:Ljava/lang/String;
    .restart local v7       #tList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :cond_db
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1875
    .local v6, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v8, v6, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1876
    const-string v8, "Same project name exists"

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1877
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1880
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "oldT"

    .line 1879
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1882
    const-string v8, "newT"

    .line 1883
    new-instance v9, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1884
    iget-object v10, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v10

    .line 1883
    invoke-direct {v9, v10}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1881
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1885
    const-string v8, "newFileName"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 1887
    const/16 v9, 0x11

    .line 1886
    invoke-virtual {v8, v9, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11b} :catch_11c

    goto :goto_da

    .line 1941
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #chars:Landroid/text/Editable;
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #projectName:Ljava/lang/String;
    .end local v6           #t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v7           #tList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :catch_11c
    move-exception v3

    .line 1943
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_da

    .line 1913
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #chars:Landroid/text/Editable;
    .restart local v5       #projectName:Ljava/lang/String;
    .restart local v7       #tList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :cond_121
    :try_start_121
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->saveAsTranscode(Ljava/lang/String;)V
    invoke-static {v8, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Ljava/lang/String;)V

    goto :goto_c8

    .line 1935
    :cond_127
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v8

    if-eqz v8, :cond_134

    .line 1936
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->createNewProject()V

    .line 1937
    :cond_134
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_139} :catch_11c

    goto :goto_da
.end method
