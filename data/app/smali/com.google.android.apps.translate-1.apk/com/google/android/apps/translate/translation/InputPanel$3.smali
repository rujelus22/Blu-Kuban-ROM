.class Lcom/google/android/apps/translate/translation/InputPanel$3;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->clearInputText()V
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
    .line 525
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$3;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$3;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputText(Ljava/lang/String;)V

    .line 530
    return-void
.end method
