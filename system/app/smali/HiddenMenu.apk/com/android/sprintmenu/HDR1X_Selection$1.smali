.class Lcom/android/sprintmenu/HDR1X_Selection$1;
.super Landroid/os/Handler;
.source "HDR1X_Selection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/HDR1X_Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/HDR1X_Selection;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/HDR1X_Selection;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 113
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_dc

    .line 187
    :goto_6
    return-void

    .line 115
    :pswitch_7
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "HDR1X_verify response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 118
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 120
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 123
    :cond_1e
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2a

    .line 125
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "ar.result == NULL! - No answer for HDR_1X_response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 129
    :cond_2a
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 131
    .local v1, buf:[B
    array-length v2, v1

    if-nez v2, :cond_3c

    .line 133
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 137
    :cond_3c
    aget-byte v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 139
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "HDR1X_verify! : It\'s OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 144
    :cond_49
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "HDR1X_verify! : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 149
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #buf:[B
    :pswitch_51
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "HDR1X_verify response incoming!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_68

    .line 154
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 157
    :cond_68
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_74

    .line 159
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "ar.result == NULL! - No answer for HDR_1X_response"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 163
    :cond_74
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 165
    .restart local v1       #buf:[B
    array-length v2, v1

    if-nez v2, :cond_86

    .line 167
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 171
    :cond_86
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    aget-byte v3, v1, v4

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v2, v3}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    .line 172
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #getter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/HDR1X_Selection;->access$000(Lcom/android/sprintmenu/HDR1X_Selection;)B

    move-result v2

    if-lez v2, :cond_cf

    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #getter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v2}, Lcom/android/sprintmenu/HDR1X_Selection;->access$000(Lcom/android/sprintmenu/HDR1X_Selection;)B

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_cf

    .line 174
    const-string v2, "HDR1X_SELECTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDR1X_verify! : It\'s OK ( value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #getter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v4}, Lcom/android/sprintmenu/HDR1X_Selection;->access$000(Lcom/android/sprintmenu/HDR1X_Selection;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_c2
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    iget-object v3, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #getter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v3}, Lcom/android/sprintmenu/HDR1X_Selection;->access$000(Lcom/android/sprintmenu/HDR1X_Selection;)B

    move-result v3

    #calls: Lcom/android/sprintmenu/HDR1X_Selection;->SetDefaultSelection(I)V
    invoke-static {v2, v3}, Lcom/android/sprintmenu/HDR1X_Selection;->access$100(Lcom/android/sprintmenu/HDR1X_Selection;I)V

    goto/16 :goto_6

    .line 178
    :cond_cf
    const-string v2, "HDR1X_SELECTION"

    const-string v3, "HDR1X_verify! : Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/sprintmenu/HDR1X_Selection$1;->this$0:Lcom/android/sprintmenu/HDR1X_Selection;

    #setter for: Lcom/android/sprintmenu/HDR1X_Selection;->mode_ID:B
    invoke-static {v2, v4}, Lcom/android/sprintmenu/HDR1X_Selection;->access$002(Lcom/android/sprintmenu/HDR1X_Selection;B)B

    goto :goto_c2

    .line 113
    :pswitch_data_dc
    .packed-switch 0x7ce
        :pswitch_51
        :pswitch_7
    .end packed-switch
.end method
