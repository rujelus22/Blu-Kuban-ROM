.class Lcom/google/android/apps/translate/TranslateApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "TranslateApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/TranslateApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateApplication$2;->this$0:Lcom/google/android/apps/translate/TranslateApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication$2;->this$0:Lcom/google/android/apps/translate/TranslateApplication;

    #getter for: Lcom/google/android/apps/translate/TranslateApplication;->mTts:Lcom/google/android/apps/translate/MyTts;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateApplication;->access$100(Lcom/google/android/apps/translate/TranslateApplication;)Lcom/google/android/apps/translate/MyTts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/MyTts;->init()V

    .line 49
    return-void
.end method
