.class Lcom/android/sprintmenu/Dataprofile_View$1;
.super Landroid/os/Handler;
.source "Dataprofile_View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Dataprofile_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Dataprofile_View;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Dataprofile_View;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    .line 102
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleMessage"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_31e

    .line 201
    :goto_f
    return-void

    .line 105
    :pswitch_10
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER_NAME_GET response incoming!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 108
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2b

    .line 110
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AsyncResult Exception Occur!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 113
    :cond_2b
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_39

    .line 115
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ar.result == NULL! - No answer for USER_NAME_response"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 118
    :cond_39
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    sput-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    .line 120
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    sget-object v7, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    iput v7, v6, Lcom/android/sprintmenu/Dataprofile_View;->NAI_length:I

    .line 121
    const/4 v3, 0x1

    .line 126
    .local v3, offset:I
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NAI_length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->NAI_length:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6a
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v6, v6, Lcom/android/sprintmenu/Dataprofile_View;->NAI_length:I

    if-ge v2, v6, :cond_91

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->user_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v9, v2, v3

    aget-byte v8, v8, v9

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->user_name:Ljava/lang/String;

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 131
    :cond_91
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user_name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->user_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->User_NamePref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$200(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->user_name:Ljava/lang/String;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/sprintmenu/Dataprofile_View;->access$100(Lcom/android/sprintmenu/Dataprofile_View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v6, v6, Lcom/android/sprintmenu/Dataprofile_View;->NAI_length:I

    add-int/2addr v3, v6

    .line 135
    new-array v5, v10, [B

    .line 136
    .local v5, temp:[B
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    :goto_e4
    if-ge v2, v10, :cond_f1

    .line 138
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v2, v3

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 139
    :cond_f1
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->byteArrayToInt([B)I
    invoke-static {v5}, Lcom/android/sprintmenu/Dataprofile_View;->access$300([B)I

    move-result v7

    iput v7, v6, Lcom/android/sprintmenu/Dataprofile_View;->MN_HA_value:I

    .line 140
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MN_HA_value(int):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->MN_HA_value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    add-int/lit8 v3, v3, 0x4

    .line 144
    const/4 v2, 0x0

    :goto_11a
    if-ge v2, v10, :cond_127

    .line 145
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v2, v3

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 146
    :cond_127
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->byteArrayToInt([B)I
    invoke-static {v5}, Lcom/android/sprintmenu/Dataprofile_View;->access$300([B)I

    move-result v7

    iput v7, v6, Lcom/android/sprintmenu/Dataprofile_View;->MN_AAA_value:I

    .line 147
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MN_AAA_value:(int)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->MN_AAA_value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    add-int/lit8 v3, v3, 0x4

    .line 151
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    sget-object v7, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-byte v7, v7, v3

    iput v7, v6, Lcom/android/sprintmenu/Dataprofile_View;->pev_tunnel_value:I

    .line 152
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget v6, v6, Lcom/android/sprintmenu/Dataprofile_View;->pev_tunnel_value:I

    if-eqz v6, :cond_1c0

    .line 154
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pev_tunnel_value TRUE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->Pev_TunnelPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$400(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    const v7, 0x7f050066

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 163
    :goto_174
    const/4 v2, 0x3

    :goto_175
    if-ltz v2, :cond_1dd

    .line 165
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v4, v2

    aget-byte v6, v6, v7

    if-gez v6, :cond_1d6

    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v4, v2

    aget-byte v6, v6, v7

    add-int/lit16 v0, v6, 0x100

    .line 166
    .local v0, IP_intval:I
    :goto_187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    .line 167
    if-eqz v2, :cond_1bd

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    .line 163
    :cond_1bd
    add-int/lit8 v2, v2, -0x1

    goto :goto_175

    .line 159
    .end local v0           #IP_intval:I
    :cond_1c0
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pev_tunnel_value FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->Pev_TunnelPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$400(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    const v7, 0x7f050067

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_174

    .line 165
    :cond_1d6
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v4, v2

    aget-byte v0, v6, v7

    goto :goto_187

    .line 170
    :cond_1dd
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "m_home_addr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->M_Home_AddrPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$500(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->m_home_addr:Ljava/lang/String;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/sprintmenu/Dataprofile_View;->access$100(Lcom/android/sprintmenu/Dataprofile_View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    add-int/lit8 v3, v4, 0x4

    .line 174
    .end local v4           #offset:I
    .restart local v3       #offset:I
    const/4 v2, 0x3

    :goto_211
    if-ltz v2, :cond_263

    .line 176
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    if-gez v6, :cond_25c

    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    add-int/lit16 v0, v6, 0x100

    .line 177
    .restart local v0       #IP_intval:I
    :goto_223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    .line 178
    if-eqz v2, :cond_259

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    .line 174
    :cond_259
    add-int/lit8 v2, v2, -0x1

    goto :goto_211

    .line 176
    .end local v0           #IP_intval:I
    :cond_25c
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v0, v6, v7

    goto :goto_223

    .line 181
    :cond_263
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prim_home_addr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->Prim_Home_AddrPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$600(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->prim_home_addr:Ljava/lang/String;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/sprintmenu/Dataprofile_View;->access$100(Lcom/android/sprintmenu/Dataprofile_View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    add-int/lit8 v3, v3, 0x4

    .line 185
    const/4 v2, 0x3

    :goto_297
    if-ltz v2, :cond_2e9

    .line 187
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    if-gez v6, :cond_2e2

    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    add-int/lit16 v0, v6, 0x100

    .line 188
    .restart local v0       #IP_intval:I
    :goto_2a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    .line 189
    if-eqz v2, :cond_2df

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v7, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    .line 185
    :cond_2df
    add-int/lit8 v2, v2, -0x1

    goto :goto_297

    .line 187
    .end local v0           #IP_intval:I
    :cond_2e2
    sget-object v6, Lcom/android/sprintmenu/Dataprofile_View;->buf:[B

    add-int v7, v3, v2

    aget-byte v0, v6, v7

    goto :goto_2a9

    .line 192
    :cond_2e9
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_View;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sec_home_agent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v6, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    #getter for: Lcom/android/sprintmenu/Dataprofile_View;->Sec_Home_AgentPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/sprintmenu/Dataprofile_View;->access$700(Lcom/android/sprintmenu/Dataprofile_View;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, p0, Lcom/android/sprintmenu/Dataprofile_View$1;->this$0:Lcom/android/sprintmenu/Dataprofile_View;

    iget-object v8, v8, Lcom/android/sprintmenu/Dataprofile_View;->sec_home_agent:Ljava/lang/String;

    #calls: Lcom/android/sprintmenu/Dataprofile_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/sprintmenu/Dataprofile_View;->access$100(Lcom/android/sprintmenu/Dataprofile_View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    add-int/lit8 v3, v3, 0x4

    .line 196
    goto/16 :goto_f

    .line 103
    :pswitch_data_31e
    .packed-switch 0xe
        :pswitch_10
    .end packed-switch
.end method
