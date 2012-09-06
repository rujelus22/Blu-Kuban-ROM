.class Lcom/google/android/apps/translate/editor/InputMethodView$5;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/editor/TextSlot;Lcom/google/android/apps/translate/asreditor/AsrResultEditor;Ljava/lang/String;Lcom/google/android/apps/translate/editor/EditPanelView;)V
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
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$5;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$5;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->CAMERA:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    if-ne v0, v1, :cond_c

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
