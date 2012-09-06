.class Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;
.super Ljava/lang/Thread;
.source "InstantTranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    new-instance v1, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;)V

    #setter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$102(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->mTrgHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler$TargetTextUpdateHandler;->startSendingTranslationRequests()V

    .line 49
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 50
    return-void
.end method
