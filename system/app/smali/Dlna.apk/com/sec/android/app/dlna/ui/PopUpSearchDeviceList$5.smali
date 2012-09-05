.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 3
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 459
    :goto_0
    iget v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->count:I

    const/16 v2, 0x23

    if-ge v1, v2, :cond_17

    .line 461
    const-wide/16 v1, 0x3e8

    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 462
    iget v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->count:I
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_0

    .line 463
    :catch_12
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$5;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    return-void
.end method
