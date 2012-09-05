.class Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    .line 2708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 2710
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 2711
    .local v1, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setExportedVideoPath(Ljava/lang/String;)V

    .line 2713
    :try_start_d
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_24} :catch_71
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_76

    .line 2722
    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scan complete:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2723
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2726
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 2727
    if-eqz p2, :cond_6c

    .line 2728
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2730
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4$1;->this$1:Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity$4;)Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2734
    :cond_6c
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$12(Z)V

    .line 2736
    :cond_70
    return-void

    .line 2715
    :catch_71
    move-exception v0

    .line 2717
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_24

    .line 2718
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_76
    move-exception v0

    .line 2720
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method
