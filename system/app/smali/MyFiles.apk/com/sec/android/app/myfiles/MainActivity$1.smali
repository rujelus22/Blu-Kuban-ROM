.class Lcom/sec/android/app/myfiles/MainActivity$1;
.super Landroid/database/ContentObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/MainActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivity$1;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string v0, "MyFiles"

    const-string v1, "MainActivity onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$1;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$1;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    return-void
.end method
