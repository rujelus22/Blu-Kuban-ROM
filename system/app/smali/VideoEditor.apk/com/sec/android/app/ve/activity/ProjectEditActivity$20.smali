.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$etext:Landroid/widget/EditText;

.field private final synthetic val$tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/widget/EditText;Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$etext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1840
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$etext:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v2, v2, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$etext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog project Name -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1843
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v2, v2, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$etext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->bringToFront()V

    .line 1846
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1847
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;->val$etext:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1849
    return-void
.end method
