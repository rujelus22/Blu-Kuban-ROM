.class Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;
.super Landroid/os/Handler;
.source "ServiceModeApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/ServiceModeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_118

    .line 151
    :cond_6
    :goto_6
    return-void

    .line 78
    :sswitch_7
    const-string v0, "ServiceMode"

    const-string v1, "Service mode End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 83
    :sswitch_f
    const-string v0, "ServiceMode"

    const-string v1, "in QUERT_SERVM_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 87
    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_26

    .line 88
    const-string v0, "ServiceMode"

    const-string v1, "Exception Occur!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 91
    :cond_26
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_32

    .line 93
    const-string v0, "ServiceMode"

    const-string v1, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 97
    :cond_32
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .line 99
    .local v7, buf:[B
    const-string v0, "ServiceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size of result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    array-length v0, v7

    if-eqz v0, :cond_6

    .line 105
    array-length v0, v7

    div-int/lit8 v0, v0, 0x22

    add-int/lit8 v10, v0, 0x1

    .line 106
    .local v10, numOfLine:I
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v10, v0, :cond_82

    .line 107
    const-string v0, "ServiceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many lines. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    .line 113
    :cond_82
    const/4 v8, 0x0

    .local v8, i:I
    :goto_83
    if-ge v8, v10, :cond_d5

    .line 115
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    .local v11, rowString:Ljava/lang/StringBuffer;
    const/4 v9, 0x2

    .local v9, j:I
    :goto_8d
    const/16 v0, 0x22

    if-ge v9, v0, :cond_9e

    .line 119
    mul-int/lit8 v0, v8, 0x22

    add-int/2addr v0, v9

    array-length v1, v7

    if-lt v0, v1, :cond_ba

    .line 120
    const-string v0, "ServiceMode"

    const-string v1, "unexpected end of line"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 134
    const-string v0, "ServiceMode"

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 124
    :cond_ba
    mul-int/lit8 v0, v8, 0x22

    add-int/2addr v0, v9

    aget-byte v0, v7, v0

    if-nez v0, :cond_c9

    .line 126
    const-string v0, "ServiceMode"

    const-string v1, "break"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 130
    :cond_c9
    mul-int/lit8 v0, v8, 0x22

    add-int/2addr v0, v9

    aget-byte v0, v7, v0

    int-to-char v0, v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v9, v9, 0x1

    goto :goto_8d

    .line 137
    .end local v9           #j:I
    .end local v11           #rowString:Ljava/lang/StringBuffer;
    :cond_d5
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->AnalisysString()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$100(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V

    goto/16 :goto_6

    .line 143
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v7           #buf:[B
    .end local v8           #i:I
    .end local v10           #numOfLine:I
    :sswitch_dc
    const-string v0, "ServiceMode"

    const-string v1, "EVENT_TICK!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->currentSVMode:C
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$200(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)C

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$1;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    move v3, v2

    move v4, v2

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V

    goto/16 :goto_6

    .line 75
    nop

    :sswitch_data_118
    .sparse-switch
        0x3e9 -> :sswitch_dc
        0x3f0 -> :sswitch_f
        0x3f1 -> :sswitch_7
    .end sparse-switch
.end method
