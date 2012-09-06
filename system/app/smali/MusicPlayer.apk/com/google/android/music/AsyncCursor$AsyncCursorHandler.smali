.class Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;
.super Lcom/google/android/music/Worker;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncCursorHandler"
.end annotation


# instance fields
.field mLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 186
    const-string v0, "AsyncCursor"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v0, "AsyncCursor"

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mLogTag:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 194
    .local v0, c:Lcom/google/android/music/AsyncCursor;
    if-nez v0, :cond_11

    .line 195
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->mLogTag:Ljava/lang/String;

    const-string v2, "Cursor disappeared, quitting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->quit()V

    .line 213
    :goto_10
    return-void

    .line 199
    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_10

    .line 201
    :pswitch_17
    #calls: Lcom/google/android/music/AsyncCursor;->doCount()V
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$300(Lcom/google/android/music/AsyncCursor;)V

    goto :goto_10

    .line 204
    :pswitch_1b
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/google/android/music/AsyncCursor;->doFetch(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/AsyncCursor;->access$400(Lcom/google/android/music/AsyncCursor;II)V

    goto :goto_10

    .line 207
    :pswitch_23
    #calls: Lcom/google/android/music/AsyncCursor;->doFreshen()V
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$500(Lcom/google/android/music/AsyncCursor;)V

    goto :goto_10

    .line 210
    :pswitch_27
    #calls: Lcom/google/android/music/AsyncCursor;->doClose()V
    invoke-static {v0}, Lcom/google/android/music/AsyncCursor;->access$600(Lcom/google/android/music/AsyncCursor;)V

    goto :goto_10

    .line 199
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1b
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method
