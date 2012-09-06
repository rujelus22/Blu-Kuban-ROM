.class Lcom/google/android/apps/translate/translation/InputPanel$4;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->showSearchButtons()V
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
    .line 728
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$4;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$4;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$600(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 733
    return-void
.end method
