.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;
.super Landroid/os/Handler;
.source "LogsDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 148
    :goto_5
    return-void

    .line 142
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 145
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    goto :goto_5

    .line 140
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
