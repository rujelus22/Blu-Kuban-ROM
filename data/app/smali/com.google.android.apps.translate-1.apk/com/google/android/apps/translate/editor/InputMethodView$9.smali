.class Lcom/google/android/apps/translate/editor/InputMethodView$9;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
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
    .line 710
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$9;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$9;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mEditPanel:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$500(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$9;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->onInputMethodReady(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 714
    return-void
.end method
