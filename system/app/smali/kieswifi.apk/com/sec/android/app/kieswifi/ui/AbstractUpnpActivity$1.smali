.class Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$1;
.super Landroid/os/Handler;
.source "AbstractUpnpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 48
    :goto_5
    return-void

    .line 40
    :pswitch_6
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$1;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    const/16 v2, 0x47d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->showDialog(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 41
    :catch_e
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 37
    nop

    :pswitch_data_14
    .packed-switch 0x47d
        :pswitch_6
    .end packed-switch
.end method
