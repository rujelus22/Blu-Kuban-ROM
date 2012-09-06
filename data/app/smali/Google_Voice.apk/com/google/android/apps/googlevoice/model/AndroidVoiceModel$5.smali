.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->requestUpToDateContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1149
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$600(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$500(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->contactsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1150
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_28

    .line 1151
    new-instance v1, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Landroid/os/Handler;)V

    .line 1153
    .local v1, observer:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->setContactsCursorAndObserver(Landroid/database/Cursor;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$700(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Landroid/database/Cursor;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;)V

    .line 1155
    .end local v1           #observer:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;
    :cond_28
    return-void
.end method
