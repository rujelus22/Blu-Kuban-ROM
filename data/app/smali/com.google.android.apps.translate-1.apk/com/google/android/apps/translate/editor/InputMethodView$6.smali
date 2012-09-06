.class Lcom/google/android/apps/translate/editor/InputMethodView$6;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->restartCameraView()V
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
    .line 428
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$6;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InputMethodView$6;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->CAMERA:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InputMethodView;->startInputMethod(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 432
    return-void
.end method
