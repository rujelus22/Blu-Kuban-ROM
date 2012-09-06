.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;
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
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v0, v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v1, v1, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mSrcTextComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$3;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v2, v2, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onLongPause(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    .line 195
    return-void
.end method
