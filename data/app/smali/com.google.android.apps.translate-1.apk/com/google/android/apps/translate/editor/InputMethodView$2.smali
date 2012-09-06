.class Lcom/google/android/apps/translate/editor/InputMethodView$2;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$2;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$2;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->VOICE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 187
    return-void
.end method
