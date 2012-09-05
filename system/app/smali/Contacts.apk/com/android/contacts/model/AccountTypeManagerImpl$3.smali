.class Lcom/android/contacts/model/AccountTypeManagerImpl$3;
.super Landroid/os/Handler;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 264
    :goto_5
    return-void

    .line 258
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    goto :goto_5

    .line 261
    :pswitch_c
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->processBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_5

    .line 256
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
