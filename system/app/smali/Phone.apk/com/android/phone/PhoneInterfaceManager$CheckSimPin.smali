.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPin"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .registers 3
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 1409
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1400
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    .line 1401
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    .line 1410
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 1411
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPin(Ljava/lang/String;)Z
    .registers 6
    .parameter "pin"

    .prologue
    .line 1440
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v2, :cond_15

    .line 1442
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 1443
    :catch_9
    move-exception v1

    .line 1444
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 1440
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1447
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1449
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1451
    :goto_22
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_12

    if-nez v2, :cond_3a

    .line 1453
    :try_start_26
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_22

    .line 1455
    :catch_31
    move-exception v1

    .line 1457
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 1460
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3a
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_12

    monitor-exit p0

    return v2
.end method

.method public run()V
    .registers 2

    .prologue
    .line 1415
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_4
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    .line 1433
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1434
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 1435
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1436
    return-void

    .line 1434
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
