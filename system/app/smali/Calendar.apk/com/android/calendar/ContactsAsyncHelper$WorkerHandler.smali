.class Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/calendar/ContactsAsyncHelper;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 89
    .local v0, args:Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_46

    .line 116
    :goto_9
    iget-object v4, p0, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/calendar/ContactsAsyncHelper;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/calendar/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 117
    .local v3, reply:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 118
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void

    .line 92
    .end local v3           #reply:Landroid/os/Message;
    :pswitch_1d
    const/4 v2, 0x0

    .line 94
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1e
    iget-object v4, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_39

    move-result-object v2

    .line 100
    :goto_2a
    if-eqz v2, :cond_42

    .line 101
    iget-object v4, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 96
    :catch_39
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ContactsAsyncHelper"

    const-string v5, "Error opening photo input stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 106
    .end local v1           #e:Ljava/lang/Exception;
    :cond_42
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 89
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method
