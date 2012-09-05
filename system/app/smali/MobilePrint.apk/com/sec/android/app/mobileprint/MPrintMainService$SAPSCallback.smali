.class Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
.super Lcom/sec/print/mobileprint/IPrintStatusCallback$Stub;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAPSCallback"
.end annotation


# instance fields
.field private mCurrentPrintPage:I

.field private mProgressValue:I

.field private mTotalPrintPage:I

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 646
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {p0}, Lcom/sec/print/mobileprint/IPrintStatusCallback$Stub;-><init>()V

    .line 647
    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    .line 648
    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mCurrentPrintPage:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    return-void
.end method

.method private calculateProgressValue(I)I
    .registers 7
    .parameter "value"

    .prologue
    .line 707
    const/high16 v2, 0x42c6

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 708
    .local v1, nProgressPerPage:F
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mCurrentPrintPage:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 709
    .local v0, nCurrentProgress:F
    float-to-int v2, v0

    return v2
.end method


# virtual methods
.method public statusChanged(II)V
    .registers 11
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x5

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 652
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAPSCallback] transactionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mLastCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1102(Lcom/sec/android/app/mobileprint/MPrintMainService;J)J

    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v0, v1

    .line 657
    .local v0, transactionID:I
    packed-switch p1, :pswitch_data_c4

    .line 687
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAPSCallback] type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_70
    :pswitch_70
    if-ge p1, v6, :cond_a9

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mCurrentPrintPage:I

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintStatus(IIII)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$600(Lcom/sec/android/app/mobileprint/MPrintMainService;IIII)V

    .line 704
    :cond_7d
    :goto_7d
    return-void

    .line 659
    :pswitch_7e
    iput v5, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    .line 660
    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mCurrentPrintPage:I

    .line 661
    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 664
    :pswitch_85
    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    if-ne v1, v5, :cond_8b

    .line 665
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mTotalPrintPage:I

    .line 667
    :cond_8b
    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 670
    :pswitch_8e
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mCurrentPrintPage:I

    .line 671
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->calculateProgressValue(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 674
    :pswitch_98
    invoke-direct {p0, p2}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->calculateProgressValue(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 677
    :pswitch_9f
    invoke-direct {p0, v7}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->calculateProgressValue(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 680
    :pswitch_a6
    iput v7, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->mProgressValue:I

    goto :goto_70

    .line 694
    :cond_a9
    if-ne p1, v6, :cond_b1

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintCompleted(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1300(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V

    goto :goto_7d

    .line 697
    :cond_b1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_ba

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responseCancelCompleted(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1200(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V

    goto :goto_7d

    .line 700
    :cond_ba
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7d

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v1, v0, p2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    goto :goto_7d

    .line 657
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_85
        :pswitch_8e
        :pswitch_98
        :pswitch_9f
        :pswitch_a6
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method
