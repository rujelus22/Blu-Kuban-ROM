.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "AndroidVoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    .line 1296
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1297
    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1301
    monitor-enter p0

    if-eqz p1, :cond_e

    .line 1302
    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 1303
    const-string v0, "ContactsObserver.onChange(): ignoring self-made contacts change."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    .line 1312
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 1307
    :cond_e
    :try_start_e
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_17

    .line 1308
    const-string v0, "ContactsObserver.onChange(): contacts changed!"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1310
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->noteContactsChanged()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1000(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1d

    goto :goto_c

    .line 1301
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
