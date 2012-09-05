.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;
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

.field private final synthetic val$lIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->val$lIntent:Landroid/content/Intent;

    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1742
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1744
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$0()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 1747
    :try_start_12
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$0()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_23} :catch_35
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_3a

    .line 1753
    :goto_23
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->updateTrimSplitSection()V
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1754
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetMediaSelection()V
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1755
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;->val$lIntent:Landroid/content/Intent;

    #calls: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(ZLandroid/content/Intent;Z)V
    invoke-static {v1, v3, v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectEditActivity;ZLandroid/content/Intent;Z)V

    .line 1757
    :cond_34
    return-void

    .line 1748
    :catch_35
    move-exception v0

    .line 1749
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 1750
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v0

    .line 1751
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23
.end method
