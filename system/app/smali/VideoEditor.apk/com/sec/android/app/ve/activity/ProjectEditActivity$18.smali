.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;
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

.field private final synthetic val$newT:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private final synthetic val$oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private final synthetic val$projectFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iput-object p3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$projectFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$newT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1774
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Same name project found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v3, v3, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$projectFileName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1777
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total project"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1780
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$newT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v2, :cond_6b

    .line 1781
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$newT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 1782
    :cond_6b
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 1811
    :goto_72
    return-void

    .line 1786
    :cond_73
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1787
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$newT:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$projectFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vep"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->val$projectFileName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1787
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 1789
    .local v0, copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1790
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 1791
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetTranscode()V
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$23(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1806
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1807
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d3} :catch_d4

    goto :goto_72

    .line 1808
    .end local v0           #copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :catch_d4
    move-exception v1

    .line 1809
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method
