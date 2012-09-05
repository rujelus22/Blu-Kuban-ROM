.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
.super Landroid/os/Handler;
.source "AlarmPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 680
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 694
    :goto_5
    return-void

    .line 682
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    goto :goto_5

    .line 686
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCompleteListener()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->doSpeak()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    goto :goto_5

    .line 680
    nop

    :pswitch_data_18
    .packed-switch 0x4000
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
