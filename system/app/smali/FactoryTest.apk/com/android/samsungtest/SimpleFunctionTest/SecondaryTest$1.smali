.class Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;
.super Landroid/os/Handler;
.source "SecondaryTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 148
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    iget-object v4, v4, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_54

    .line 189
    :goto_e
    return-void

    .line 153
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_21

    .line 157
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    iget-object v4, v4, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, " secondary AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 168
    :cond_21
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    iget-object v4, v4, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "succuess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "DEBUG_SCR"

    .line 172
    .local v1, host:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v3, intent:Landroid/content/Intent;
    const/16 v2, 0x3e8

    .line 176
    .local v2, i:I
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.sprintmenu"

    const-string v6, "com.android.sprintmenu.TerminalMode"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    const-string v4, "keyString"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v4, "secondary"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    iget v5, v5, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->active_code:I

    invoke-virtual {v4, v3, v5}, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 149
    nop

    :pswitch_data_54
    .packed-switch 0x22
        :pswitch_f
    .end packed-switch
.end method
