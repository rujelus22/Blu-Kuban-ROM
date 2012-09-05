.class Lcom/android/samsungtest/FactoryTest/FactoryTestApp$1;
.super Landroid/os/Handler;
.source "FactoryTestApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 318
    :goto_5
    return-void

    .line 312
    :pswitch_6
    const-string v0, "FactoryTestApp"

    const-string v1, "mCheckHandler FIRST_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sdcardTest()V
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$000(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    goto :goto_5

    .line 310
    nop

    :pswitch_data_14
    .packed-switch 0x650
        :pswitch_6
    .end packed-switch
.end method
