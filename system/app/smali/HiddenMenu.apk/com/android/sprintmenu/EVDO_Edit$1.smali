.class Lcom/android/sprintmenu/EVDO_Edit$1;
.super Landroid/os/Handler;
.source "EVDO_Edit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/EVDO_Edit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/EVDO_Edit;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/EVDO_Edit;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const v7, 0x7f05001e

    const/4 v6, 0x1

    const v5, 0x7f05001d

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 173
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_94

    .line 202
    :cond_10
    :goto_10
    return-void

    .line 175
    :pswitch_11
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 176
    invoke-static {}, Lcom/android/sprintmenu/EVDO_Edit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncResult Exception Occur!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 179
    :cond_1f
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2d

    .line 180
    invoke-static {}, Lcom/android/sprintmenu/EVDO_Edit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar.result == NULL! - No answer for OEM_HIDDEN_GET_DDTM_MODE responce"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 184
    :cond_2d
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/4 v4, 0x0

    aget-byte v1, v3, v4

    .line 185
    .local v1, mode:B
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v3, v5}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, value:Ljava/lang/String;
    if-ne v1, v6, :cond_44

    .line 187
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v3, v7}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_44
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    #getter for: Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/sprintmenu/EVDO_Edit;->access$100(Lcom/android/sprintmenu/EVDO_Edit;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    #getter for: Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/sprintmenu/EVDO_Edit;->access$100(Lcom/android/sprintmenu/EVDO_Edit;)Landroid/preference/ListPreference;

    move-result-object v4

    if-ne v1, v6, :cond_63

    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v3, v7}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5f
    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_63
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v3, v5}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5f

    .line 193
    .end local v1           #mode:B
    .end local v2           #value:Ljava/lang/String;
    :pswitch_6a
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10

    .line 194
    invoke-static {}, Lcom/android/sprintmenu/EVDO_Edit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncResult Exception Occur!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    #getter for: Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/sprintmenu/EVDO_Edit;->access$100(Lcom/android/sprintmenu/EVDO_Edit;)Landroid/preference/ListPreference;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    #getter for: Lcom/android/sprintmenu/EVDO_Edit;->DDTM_Pref:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/sprintmenu/EVDO_Edit;->access$100(Lcom/android/sprintmenu/EVDO_Edit;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/EVDO_Edit$1;->this$0:Lcom/android/sprintmenu/EVDO_Edit;

    invoke-virtual {v4, v5}, Lcom/android/sprintmenu/EVDO_Edit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 173
    nop

    :pswitch_data_94
    .packed-switch 0x17
        :pswitch_11
        :pswitch_6a
    .end packed-switch
.end method
