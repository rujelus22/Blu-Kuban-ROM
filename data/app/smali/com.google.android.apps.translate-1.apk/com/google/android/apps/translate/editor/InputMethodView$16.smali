.class Lcom/google/android/apps/translate/editor/InputMethodView$16;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->showCameraLoggingDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$16;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    iput-object p2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$16;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$16;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Profile;->setShowCameraLoggingDialog(Landroid/content/Context;Z)V

    .line 1013
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$16;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraLoggingConfirmed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$902(Lcom/google/android/apps/translate/editor/InputMethodView;Z)Z

    .line 1014
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1015
    return-void
.end method
