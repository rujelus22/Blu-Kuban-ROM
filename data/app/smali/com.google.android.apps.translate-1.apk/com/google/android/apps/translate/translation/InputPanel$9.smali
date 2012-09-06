.class Lcom/google/android/apps/translate/translation/InputPanel$9;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
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
    .line 880
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$9;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 884
    const-string v0, "InputPanel"

    const-string v1, "onTranslationDone SELECT LAST"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$9;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    const/4 v1, 0x1

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1000(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 889
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$9;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->onTranslationDone()V

    .line 895
    return-void
.end method
