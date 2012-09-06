.class Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$1;
.super Ljava/lang/Object;
.source "AndroidDependencyResolver.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$1;->this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "model"
    .parameter "action"

    .prologue
    .line 371
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveActionsToDatabase()V

    .line 372
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 375
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveActionsToDatabase()V

    .line 376
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 368
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "model"
    .parameter "c"

    .prologue
    .line 366
    return-void
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 3
    .parameter "model"
    .parameter "l"

    .prologue
    .line 364
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 361
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveToDatabase()V

    .line 362
    return-void
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 5
    .parameter "model"

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.vvm.service.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getVoiceApplication()Lcom/google/android/apps/googlevoice/VoiceApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 386
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 3
    .parameter "model"
    .parameter "e"

    .prologue
    .line 388
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 390
    return-void
.end method
