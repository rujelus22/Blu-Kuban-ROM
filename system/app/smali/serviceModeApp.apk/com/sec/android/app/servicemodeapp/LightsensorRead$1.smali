.class Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;
.super Ljava/util/TimerTask;
.source "LightsensorRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/LightsensorRead;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/LightsensorRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/LightsensorRead;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/LightsensorRead;

    #getter for: Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->access$200(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1$1;-><init>(Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method