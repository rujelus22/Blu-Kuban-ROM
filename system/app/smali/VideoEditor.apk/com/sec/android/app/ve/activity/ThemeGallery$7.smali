.class Lcom/sec/android/app/ve/activity/ThemeGallery$7;
.super Ljava/lang/Object;
.source "ThemeGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeGallery;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 371
    const-string v6, "should not save the file"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 373
    const v6, 0x7f08003a

    const/4 v7, -0x1

    invoke-static {v6, v7, v8, v8}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showToast(IIII)V

    .line 374
    const/4 v5, 0x0

    .line 375
    .local v5, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v7, v7, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    .line 376
    .local v4, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v6, v6, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, fCheck:Ljava/io/File;
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    .line 378
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 379
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    :try_start_38
    const-string v6, "Reading from FS"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 382
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v8, v8, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 383
    .local v3, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object v5, v0

    .line 384
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v6, v6, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectFileName(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5f} :catch_7e

    .line 388
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    :goto_5f
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    .line 394
    :goto_6b
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 395
    return-void

    .line 391
    :cond_71
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 392
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$7;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    goto :goto_6b

    .line 385
    :catch_7e
    move-exception v6

    goto :goto_5f
.end method
