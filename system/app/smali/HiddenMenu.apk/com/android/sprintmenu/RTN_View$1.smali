.class Lcom/android/sprintmenu/RTN_View$1;
.super Landroid/os/Handler;
.source "RTN_View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/RTN_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/RTN_View;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/RTN_View;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2a

    .line 114
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AsyncResult Exception Occur!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_29
    return-void

    .line 117
    :cond_2a
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_4b

    .line 118
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NULL result!! at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 122
    :cond_4b
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_202

    goto :goto_29

    .line 125
    :sswitch_51
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 126
    .local v3, property:Ljava/lang/String;
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM_HIDDEN_GET_ESNMEID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/sprintmenu/RTN_View;->access$200(Lcom/android/sprintmenu/RTN_View;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/sprintmenu/RTN_View;->access$100(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 131
    .end local v3           #property:Ljava/lang/String;
    :sswitch_7f
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 132
    .local v1, buff:[B
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM_HIDDEN_GET_LIFEBYTE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->setLifeTimerCallStatus([B)V
    invoke-static {v4, v1}, Lcom/android/sprintmenu/RTN_View;->access$300(Lcom/android/sprintmenu/RTN_View;[B)V

    goto :goto_29

    .line 137
    .end local v1           #buff:[B
    :sswitch_a7
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 138
    .restart local v1       #buff:[B
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM_HIDDEN_GET_LIFEBYTE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->setLifeByteStatus([B)V
    invoke-static {v4, v1}, Lcom/android/sprintmenu/RTN_View;->access$400(Lcom/android/sprintmenu/RTN_View;[B)V

    goto/16 :goto_29

    .line 143
    .end local v1           #buff:[B
    :sswitch_d0
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 144
    .restart local v1       #buff:[B
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM_HIDDEN_GET_RECONDITIONED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->setReconditionedStatus([B)V
    invoke-static {v4, v1}, Lcom/android/sprintmenu/RTN_View;->access$500(Lcom/android/sprintmenu/RTN_View;[B)V

    goto/16 :goto_29

    .line 149
    .end local v1           #buff:[B
    :sswitch_f9
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 150
    .restart local v1       #buff:[B
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM_HIDDEN_GET_ACTIVATIONDATE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->setActivationDateStatus([B)V
    invoke-static {v4, v1}, Lcom/android/sprintmenu/RTN_View;->access$600(Lcom/android/sprintmenu/RTN_View;[B)V

    goto/16 :goto_29

    .line 154
    .end local v1           #buff:[B
    :sswitch_122
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, msidBuff:Ljava/lang/String;
    const-string v4, "MSID"

    const-string v5, "call back arrived with stirng"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, "MSID"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #calls: Lcom/android/sprintmenu/RTN_View;->setMSID(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/sprintmenu/RTN_View;->access$700(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 161
    .end local v2           #msidBuff:Ljava/lang/String;
    :sswitch_139
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "in OEM_HIDDEN_GET_VERSION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_153

    .line 167
    const-string v4, "Status"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 170
    :cond_153
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_160

    .line 172
    const-string v4, "Status"

    const-string v5, "ar.result == NULL! - No answer for GET_VERSION_response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 185
    :cond_160
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    iget-object v5, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    const-string v6, "PRLVERPref"

    invoke-virtual {v5, v6}, Lcom/android/sprintmenu/RTN_View;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    #setter for: Lcom/android/sprintmenu/RTN_View;->mPrl:Landroid/preference/Preference;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/RTN_View;->access$802(Lcom/android/sprintmenu/RTN_View;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 186
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    const-string v5, "PRL:"

    iput-object v5, v4, Lcom/android/sprintmenu/RTN_View;->prl_format:Ljava/lang/String;

    .line 188
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    const-string v5, "ril.prl_ver_1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/RTN_View;->access$902(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f5

    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_1f5

    .line 190
    invoke-static {}, Lcom/android/sprintmenu/RTN_View;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in OEM_HIDDEN_GET_VERSION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    iget-object v5, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    iget-object v5, v5, Lcom/android/sprintmenu/RTN_View;->prl_format:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/sprintmenu/RTN_View;->access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/sprintmenu/RTN_View;->prl_formated_string:Ljava/lang/String;

    .line 194
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->mPrl:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/sprintmenu/RTN_View;->access$800(Lcom/android/sprintmenu/RTN_View;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    iget-object v5, v5, Lcom/android/sprintmenu/RTN_View;->prl_formated_string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 196
    :cond_1f5
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View$1;->this$0:Lcom/android/sprintmenu/RTN_View;

    #getter for: Lcom/android/sprintmenu/RTN_View;->mPrl:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/sprintmenu/RTN_View;->access$800(Lcom/android/sprintmenu/RTN_View;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "PRL : <unknown>"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 122
    :sswitch_data_202
    .sparse-switch
        0x3 -> :sswitch_51
        0xa -> :sswitch_7f
        0xb -> :sswitch_a7
        0xc -> :sswitch_d0
        0xd -> :sswitch_f9
        0xf -> :sswitch_122
        0x14 -> :sswitch_139
    .end sparse-switch
.end method
