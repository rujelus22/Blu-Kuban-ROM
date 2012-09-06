.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "AndroidClickToCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickToCallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 344
    :goto_5
    return-void

    .line 333
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #calls: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallDialog()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$100(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    goto :goto_5

    .line 337
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #calls: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallSuccessDialog()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$200(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    goto :goto_5

    .line 341
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$ClickToCallHandler;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #calls: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->showClickToCallFailureDialog()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$300(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V

    goto :goto_5

    .line 331
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
