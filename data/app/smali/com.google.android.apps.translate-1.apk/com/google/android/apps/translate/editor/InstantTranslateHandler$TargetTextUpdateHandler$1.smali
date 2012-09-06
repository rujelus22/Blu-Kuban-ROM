.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;
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
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v0, v0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler$1;->this$1:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v1, v1, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onTargetTextDone(Landroid/text/SpannableStringBuilder;)V

    .line 168
    return-void
.end method
