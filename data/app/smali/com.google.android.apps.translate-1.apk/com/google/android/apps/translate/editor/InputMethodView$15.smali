.class Lcom/google/android/apps/translate/editor/InputMethodView$15;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 2
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$15;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$15;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z

    .line 1004
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$15;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$500(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onAccept(Z)V

    .line 1005
    return-void
.end method
