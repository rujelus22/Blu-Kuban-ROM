.class Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;
.super Landroid/os/Handler;
.source "PhoneCrashNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/crashnotifier/PhoneCrashNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;


# direct methods
.method constructor <init>(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2c

    .line 124
    :cond_5
    :goto_5
    return-void

    .line 111
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->displayCrashInfo(I)V

    goto :goto_5

    .line 115
    :sswitch_e
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->displayCrashInfo(I)V

    goto :goto_5

    .line 119
    :sswitch_16
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$000(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/samsung/crashnotifier/PhoneCrashNotifier$2;->this$0:Lcom/samsung/crashnotifier/PhoneCrashNotifier;

    #getter for: Lcom/samsung/crashnotifier/PhoneCrashNotifier;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/crashnotifier/PhoneCrashNotifier;->access$000(Lcom/samsung/crashnotifier/PhoneCrashNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_5

    .line 108
    :sswitch_data_2c
    .sparse-switch
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_e
        0x44c -> :sswitch_16
    .end sparse-switch
.end method
