.class Lcom/sec/android/app/dlna/ui/DLNASettings$4;
.super Ljava/lang/Object;
.source "DLNASettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$4;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 452
    const-wide/16 v1, 0x1f4

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_b

    .line 456
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$4;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #calls: Lcom/sec/android/app/dlna/ui/DLNASettings;->startWarningActivity()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$900(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    .line 457
    return-void

    .line 453
    :catch_b
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
