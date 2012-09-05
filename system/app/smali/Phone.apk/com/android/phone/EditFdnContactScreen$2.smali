.class Lcom/android/phone/EditFdnContactScreen$2;
.super Landroid/os/Handler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_22

    .line 340
    :goto_5
    return-void

    .line 334
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v1}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 337
    :sswitch_19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DONE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 332
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_19
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
