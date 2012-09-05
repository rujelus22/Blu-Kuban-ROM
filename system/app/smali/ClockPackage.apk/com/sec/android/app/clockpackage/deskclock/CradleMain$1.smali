.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$1;
.super Landroid/os/Handler;
.source "CradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 2
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 502
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 512
    :goto_5
    return-void

    .line 507
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->updateWeatherInfo()V

    goto :goto_5

    .line 502
    :pswitch_data_c
    .packed-switch 0x12c0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
