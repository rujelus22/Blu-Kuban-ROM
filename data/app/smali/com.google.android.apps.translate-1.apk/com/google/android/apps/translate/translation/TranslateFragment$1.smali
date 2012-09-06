.class Lcom/google/android/apps/translate/translation/TranslateFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TranslateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/TranslateFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/TranslateFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateFragment$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateFragment$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateFragment;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateFragment;->mTranslateHelper:Lcom/google/android/apps/translate/translation/TranslateHelper;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->access$000(Lcom/google/android/apps/translate/translation/TranslateFragment;)Lcom/google/android/apps/translate/translation/TranslateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->onLanguagesChanged()V

    .line 86
    return-void
.end method
