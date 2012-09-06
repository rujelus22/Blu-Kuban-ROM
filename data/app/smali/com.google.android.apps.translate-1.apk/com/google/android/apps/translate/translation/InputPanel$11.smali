.class Lcom/google/android/apps/translate/translation/InputPanel$11;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->onTranslationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$11;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$11;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setPreviousResult()V
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1500(Lcom/google/android/apps/translate/translation/InputPanel;)V

    .line 958
    return-void
.end method
