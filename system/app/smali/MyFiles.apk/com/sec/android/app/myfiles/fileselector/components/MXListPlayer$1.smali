.class Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;
.super Ljava/lang/Object;
.source "MXListPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    #calls: Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->checkListPlayerAndUpdateView()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->access$000(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->access$100(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->access$200(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_18
    return-void
.end method
