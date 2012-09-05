.class Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;
.super Ljava/lang/Object;
.source "SnsSvc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/SnsSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoDeliverResponse"
.end annotation


# instance fields
.field private mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

.field private mResultType:I

.field final synthetic this$0:Lcom/sec/android/app/sns/SnsSvc;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;I)V
    .registers 5
    .parameter
    .parameter "data"
    .parameter "resultType"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mResultType:I

    .line 255
    iput-object p2, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    .line 256
    iput p3, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mResultType:I

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mResultType:I

    packed-switch v0, :pswitch_data_42

    .line 283
    const-string v0, "SnsSvc"

    const-string v1, "DoDeliverResponse() : mResultType is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_c
    :goto_c
    return-void

    .line 266
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mService:Lcom/sec/android/app/sns/SnsService;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$500(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/SnsService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    #getter for: Lcom/sec/android/app/sns/SnsSvc;->mService:Lcom/sec/android/app/sns/SnsService;
    invoke-static {v0}, Lcom/sec/android/app/sns/SnsSvc;->access$500(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/SnsService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/SnsService;->invokeCallback(Lcom/sec/android/app/sns/result/SnsResultData;)V

    goto :goto_c

    .line 271
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    #calls: Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcast(Lcom/sec/android/app/sns/result/SnsResultData;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sns/SnsSvc;->access$600(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V

    goto :goto_c

    .line 274
    :pswitch_29
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    #calls: Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForRetryLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sns/SnsSvc;->access$700(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V

    goto :goto_c

    .line 277
    :pswitch_31
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    #calls: Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sns/SnsSvc;->access$800(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V

    goto :goto_c

    .line 280
    :pswitch_39
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->this$0:Lcom/sec/android/app/sns/SnsSvc;

    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;->mCallbackData:Lcom/sec/android/app/sns/result/SnsResultData;

    #calls: Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForMessageRetrieveStart(Lcom/sec/android/app/sns/result/SnsResultData;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sns/SnsSvc;->access$900(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V

    goto :goto_c

    .line 264
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_d
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method
