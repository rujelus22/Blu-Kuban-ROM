.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inside DIALOG_EXPORT_RESOLUTION dialog and id -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2044
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2046
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2047
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2048
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 2051
    :goto_3a
    return-void

    .line 2050
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_3a
.end method
