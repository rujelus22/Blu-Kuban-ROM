.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2342
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    .line 2343
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v3, v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 2342
    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 2344
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 2345
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v2, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 2349
    :goto_23
    return-void

    .line 2346
    :catch_24
    move-exception v0

    .line 2347
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method
