.class Lcom/google/android/apps/translate/editor/InputMethodView$8;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->hideCurrentInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)Z
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
    .line 556
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$8;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$8;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #calls: Lcom/google/android/apps/translate/editor/InputMethodView;->hideSoftwareKeyboard()V
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$400(Lcom/google/android/apps/translate/editor/InputMethodView;)V

    .line 564
    return-void
.end method
