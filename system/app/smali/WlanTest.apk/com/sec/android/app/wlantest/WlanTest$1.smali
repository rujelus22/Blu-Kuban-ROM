.class final Lcom/sec/android/app/wlantest/WlanTest$1;
.super Landroid/os/Handler;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    :cond_8
    :goto_8
    return-void

    .line 179
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, str:Ljava/lang/String;
    const-string v1, "WlanTest"

    const-string v2, "Inside Handle Message: EVENT_GUI_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$000()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 182
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$100()Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/wlantest/WlanTest;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_8

    .line 177
    :pswitch_data_32
    .packed-switch 0x101
        :pswitch_9
    .end packed-switch
.end method
