.class public Lcom/sec/android/app/music/AudioPreview$BatteryChecker;
.super Landroid/os/AsyncTask;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Activity;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4237
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Object;
    .registers 6
    .parameter "params"

    .prologue
    .line 4242
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->batteryCheck()Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$4100(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 4243
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mLowBattery:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$4200(Lcom/sec/android/app/music/AudioPreview;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4244
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mLowBattery:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$4200(Lcom/sec/android/app/music/AudioPreview;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_24

    .line 4249
    :cond_22
    :goto_22
    const/4 v1, 0x0

    return-object v1

    .line 4246
    :catch_24
    move-exception v0

    .line 4247
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4237
    check-cast p1, [Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->doInBackground([Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
