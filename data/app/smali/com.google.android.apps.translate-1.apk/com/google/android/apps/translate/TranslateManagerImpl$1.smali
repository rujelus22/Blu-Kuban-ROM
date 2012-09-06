.class Lcom/google/android/apps/translate/TranslateManagerImpl$1;
.super Ljava/lang/Thread;
.source "TranslateManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$1;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$1;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    new-instance v1, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

    iget-object v2, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$1;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$1;)V

    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl;->mLogRequestHandler:Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$002(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;)Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandler;

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    const-string v0, "TranslateManagerImpl"

    const-string v1, "BYE!"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
