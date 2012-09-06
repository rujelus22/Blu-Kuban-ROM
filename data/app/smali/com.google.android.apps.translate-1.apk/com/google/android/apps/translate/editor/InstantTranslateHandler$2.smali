.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;
.super Ljava/lang/Object;
.source "InstantTranslateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->setTranslateText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

.field final synthetic val$setEllipsis:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->val$setEllipsis:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->val$setEllipsis:Z

    if-eqz v1, :cond_1e

    .line 241
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    .local v0, intermediateTranslation:Landroid/text/SpannableStringBuilder;
    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onTargetTextUpdate(Landroid/text/SpannableStringBuilder;)V

    .line 248
    .end local v0           #intermediateTranslation:Landroid/text/SpannableStringBuilder;
    :goto_1d
    return-void

    .line 246
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$2;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTranslateComposing:Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$700(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$InstantTranslateListner;->onTargetTextUpdate(Landroid/text/SpannableStringBuilder;)V

    goto :goto_1d
.end method
