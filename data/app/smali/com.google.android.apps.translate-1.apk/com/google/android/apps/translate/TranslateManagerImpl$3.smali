.class Lcom/google/android/apps/translate/TranslateManagerImpl$3;
.super Ljava/lang/Object;
.source "TranslateManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-static {p2}, Lcom/google/android/apps/translate/ITranslate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/translate/ITranslate;

    move-result-object v1

    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl;->mTranslateService:Lcom/google/android/apps/translate/ITranslate;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$302(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/ITranslate;)Lcom/google/android/apps/translate/ITranslate;

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$402(Lcom/google/android/apps/translate/TranslateManagerImpl;Z)Z

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    #getter for: Lcom/google/android/apps/translate/TranslateManagerImpl;->mCondVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$500(Lcom/google/android/apps/translate/TranslateManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 161
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$3;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/TranslateManagerImpl;->mIsConnected:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/TranslateManagerImpl;->access$402(Lcom/google/android/apps/translate/TranslateManagerImpl;Z)Z

    .line 166
    return-void
.end method
