.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    .line 3503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 3506
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 3507
    .local v1, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scan completed::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setExportedVideoPath(Ljava/lang/String;)V

    .line 3512
    :try_start_21
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_38} :catch_84
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_38} :catch_89

    .line 3521
    :goto_38
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 3523
    const-string v2, "PEA  Media scan complete"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3524
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 3525
    if-eqz p2, :cond_79

    .line 3526
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3528
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 3532
    :cond_79
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;->access$0(Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;)Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 3534
    :cond_83
    return-void

    .line 3514
    :catch_84
    move-exception v0

    .line 3516
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_38

    .line 3517
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_89
    move-exception v0

    .line 3519
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38
.end method
