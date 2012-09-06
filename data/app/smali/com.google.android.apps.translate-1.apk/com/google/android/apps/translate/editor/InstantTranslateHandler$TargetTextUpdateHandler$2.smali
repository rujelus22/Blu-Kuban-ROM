.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;
.super Ljava/lang/Object;
.source "InstantTranslateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$2;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v0, v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->setTranslateText(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$600(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V

    .line 188
    :cond_11
    return-void
.end method
