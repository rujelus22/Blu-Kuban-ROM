.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;
.super Landroid/os/Handler;
.source "CradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;
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
    .line 2588
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 2591
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c

    .line 2592
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->saveScreen()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$1000(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    .line 2597
    :cond_b
    :goto_b
    return-void

    .line 2593
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_b

    .line 2594
    const-string v0, "CradleMain"

    const-string v1, "mHandy run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$6;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->moveScreenSaver()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->access$1100(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V

    goto :goto_b
.end method
