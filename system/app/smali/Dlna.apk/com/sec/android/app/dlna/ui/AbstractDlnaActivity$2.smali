.class Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$2;
.super Ljava/lang/Object;
.source "AbstractDlnaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 198
    const-wide/16 v1, 0x1f4

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_b

    .line 202
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->startWarningActivity()V
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->access$000(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    .line 203
    return-void

    .line 199
    :catch_b
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
