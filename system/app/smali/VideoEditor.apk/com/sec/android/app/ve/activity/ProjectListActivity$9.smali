.class Lcom/sec/android/app/ve/activity/ProjectListActivity$9;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 786
    new-instance v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>()V

    .line 788
    .local v2, tCodeElmnt:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_2d

    move-result-object v2

    .line 793
    :goto_f
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const-class v4, Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    .local v1, lIntent:Landroid/content/Intent;
    const-string v3, "filename"

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v3, "newproject"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    .line 799
    return-void

    .line 789
    .end local v1           #lIntent:Landroid/content/Intent;
    :catch_2d
    move-exception v0

    .line 790
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f
.end method
