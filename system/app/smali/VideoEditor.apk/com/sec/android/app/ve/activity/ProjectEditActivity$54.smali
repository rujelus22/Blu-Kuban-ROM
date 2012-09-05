.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 2575
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2576
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v5, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v4, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2577
    const/4 v3, 0x0

    .line 2578
    .local v3, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v5, v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 2579
    .local v2, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v4, v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2580
    .local v0, fCheck:Ljava/io/File;
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    .line 2581
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2582
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2584
    :try_start_3a
    const-string v4, "Reading from FS"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2587
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    .line 2588
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->setCloneTE(Ljava/lang/Object;)V

    .line 2589
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v4, v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectFileName(Ljava/lang/String;)V

    .line 2590
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_64} :catch_94

    .line 2595
    :goto_64
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2596
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    .line 2602
    :goto_70
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-boolean v6, v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 2603
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 2604
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->createNewProject()V

    .line 2605
    :cond_81
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 2606
    return-void

    .line 2598
    :cond_87
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2599
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    goto :goto_70

    .line 2592
    :catch_94
    move-exception v4

    goto :goto_64
.end method
