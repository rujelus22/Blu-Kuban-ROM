.class Lcom/sec/android/app/dlna/ui/DLNASettings$7;
.super Landroid/os/Handler;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 640
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3a

    .line 654
    :goto_6
    return-void

    .line 642
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    const v3, 0x7f09006b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    const v6, 0x7f090058

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 648
    :sswitch_2c
    :try_start_2c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    const/16 v2, 0x47d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_6

    .line 649
    :catch_34
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 640
    nop

    :sswitch_data_3a
    .sparse-switch
        0x47d -> :sswitch_2c
        0x8ae -> :sswitch_7
    .end sparse-switch
.end method
