.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoDeliverResponse"
.end annotation


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mErrType:I

.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "errType"
    .parameter "desc"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mErrType:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mDesc:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mErrType:I

    .line 90
    iput-object p3, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mDesc:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mErrType:I

    packed-switch v0, :pswitch_data_20

    .line 104
    const-string v0, "SnsDisclaimer"

    const-string v1, "DoDeliverResponse() : mErrType is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_c
    return-void

    .line 98
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    iget v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mErrType:I

    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->showAlertDialog(ILjava/lang/String;)V

    goto :goto_c

    .line 101
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    iget v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;->mErrType:I

    #calls: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->runTimeout(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$000(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;I)V

    goto :goto_c

    .line 95
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method
