.class Lcom/android/sprintmenu/EVDO_View$1;
.super Landroid/os/Handler;
.source "EVDO_View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/EVDO_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/EVDO_View;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/EVDO_View;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const v7, 0x7f05001e

    const v6, 0x7f05001d

    const/4 v5, 0x1

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_5e

    .line 161
    :goto_10
    return-void

    .line 140
    :pswitch_11
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 141
    invoke-static {}, Lcom/android/sprintmenu/EVDO_View;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncResult Exception Occur!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 144
    :cond_1f
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2d

    .line 145
    invoke-static {}, Lcom/android/sprintmenu/EVDO_View;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar.result == NULL! - No answer for OEM_HIDDEN_GET_DDTM_MODE responce"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 149
    :cond_2d
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/4 v4, 0x0

    aget-byte v1, v3, v4

    .line 150
    .local v1, mode:B
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    invoke-virtual {v3, v6}, Lcom/android/sprintmenu/EVDO_View;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, value:Ljava/lang/String;
    if-ne v1, v5, :cond_44

    .line 152
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    invoke-virtual {v3, v7}, Lcom/android/sprintmenu/EVDO_View;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_44
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    #getter for: Lcom/android/sprintmenu/EVDO_View;->DDTM_Pref:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/sprintmenu/EVDO_View;->access$100(Lcom/android/sprintmenu/EVDO_View;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v1, v5, :cond_56

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    invoke-virtual {v3, v7}, Lcom/android/sprintmenu/EVDO_View;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_52
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_56
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_View$1;->this$0:Lcom/android/sprintmenu/EVDO_View;

    invoke-virtual {v3, v6}, Lcom/android/sprintmenu/EVDO_View;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    .line 138
    nop

    :pswitch_data_5e
    .packed-switch 0x17
        :pswitch_11
    .end packed-switch
.end method
