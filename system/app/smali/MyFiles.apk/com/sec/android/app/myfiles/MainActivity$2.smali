.class Lcom/sec/android/app/myfiles/MainActivity$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sec/android/app/myfiles/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivity$2;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 77
    const-string v0, "MyFiles"

    const-string v1, "MainActivity : mHandler - refreshActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivity$2;->this$0:Lcom/sec/android/app/myfiles/MainActivity;

    #calls: Lcom/sec/android/app/myfiles/MainActivity;->refreshActivity()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MainActivity;->access$000(Lcom/sec/android/app/myfiles/MainActivity;)V

    .line 79
    return-void
.end method
