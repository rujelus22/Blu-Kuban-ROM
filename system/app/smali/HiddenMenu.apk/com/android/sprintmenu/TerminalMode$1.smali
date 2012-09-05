.class Lcom/android/sprintmenu/TerminalMode$1;
.super Landroid/os/Handler;
.source "TerminalMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/TerminalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/TerminalMode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .parameter "msg"

    .prologue
    .line 144
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 145
    .local v7, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_41e

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/TerminalMode;->displayError()V

    .line 342
    :cond_14
    :goto_14
    return-void

    .line 149
    :sswitch_15
    const-string v1, "TerminalMode"

    const-string v2, "in QUERT_SERVM_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_28

    .line 151
    const-string v1, "TerminalMode"

    const-string v2, "Exception Occur!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 154
    :cond_28
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_34

    .line 156
    const-string v1, "TerminalMode"

    const-string v2, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 160
    :cond_34
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v9, v1

    check-cast v9, [B

    .line 169
    .local v9, buf:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x1

    aget-byte v2, v9, v2

    #setter for: Lcom/android/sprintmenu/TerminalMode;->total_line:I
    invoke-static {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->access$202(Lcom/android/sprintmenu/TerminalMode;I)I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_ed

    const/4 v1, 0x1

    :goto_50
    #setter for: Lcom/android/sprintmenu/TerminalMode;->key_enable:Z
    invoke-static {v2, v1}, Lcom/android/sprintmenu/TerminalMode;->access$302(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 171
    const-string v1, "TerminalMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total Line : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->total_line:I
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$200(Lcom/android/sprintmenu/TerminalMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / keypad : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->key_enable:Z
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$300(Lcom/android/sprintmenu/TerminalMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x3

    const/4 v2, 0x0

    array-length v3, v9

    add-int/lit8 v3, v3, -0x3

    invoke-static {v9, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x0

    #setter for: Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z
    invoke-static {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->access$402(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 176
    const/4 v14, 0x0

    .local v14, i:I
    :goto_96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->total_line:I
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$200(Lcom/android/sprintmenu/TerminalMode;)I

    move-result v1

    if-ge v14, v1, :cond_2fe

    .line 178
    const-string v18, ""

    .line 179
    .local v18, rowString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    aput-object v2, v1, v14

    .line 180
    const/16 v16, 0x0

    .local v16, j:I
    :goto_b0
    const/16 v1, 0x22

    move/from16 v0, v16

    if-ge v0, v1, :cond_f8

    .line 182
    if-eqz v16, :cond_bd

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_f0

    .line 184
    :cond_bd
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_ea

    .line 186
    mul-int/lit8 v1, v14, 0x22

    add-int v1, v1, v16

    aget-byte v1, v9, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ea

    .line 188
    const-string v1, "TerminalMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item focus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #setter for: Lcom/android/sprintmenu/TerminalMode;->selectedString:I
    invoke-static {v1, v14}, Lcom/android/sprintmenu/TerminalMode;->access$602(Lcom/android/sprintmenu/TerminalMode;I)I

    .line 180
    :cond_ea
    :goto_ea
    add-int/lit8 v16, v16, 0x1

    goto :goto_b0

    .line 170
    .end local v14           #i:I
    .end local v16           #j:I
    .end local v18           #rowString:Ljava/lang/String;
    :cond_ed
    const/4 v1, 0x0

    goto/16 :goto_50

    .line 195
    .restart local v14       #i:I
    .restart local v16       #j:I
    .restart local v18       #rowString:Ljava/lang/String;
    :cond_f0
    mul-int/lit8 v1, v14, 0x22

    add-int v1, v1, v16

    aget-byte v1, v9, v1

    if-nez v1, :cond_1ea

    .line 202
    :cond_f8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->selectedString:I
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$600(Lcom/android/sprintmenu/TerminalMode;)I

    move-result v1

    if-ne v1, v14, :cond_206

    const-string v1, " *"

    :goto_117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v14

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v14

    const-string v2, "<SEC RX INFOR>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14f

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x1

    #setter for: Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z
    invoke-static {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->access$402(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    const-string v1, "TerminalMode"

    const-string v2, "VISIBLE !!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_14f
    const/4 v15, 0x0

    .line 212
    .local v15, index:I
    const/16 v20, 0x0

    .line 214
    .local v20, value:I
    const-string v19, ""

    .line 216
    .local v19, sString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v14

    const-string v2, "RSSI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20a

    .line 217
    const-string v1, "TerminalMode"

    const-string v2, "RSSI Testing !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "TerminalMode"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v14

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v14

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 220
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 221
    const/16 v1, 0x20

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/sprintmenu/TerminalMode;->bwaiting:Z

    .line 229
    :goto_1a4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1ae

    if-lez v15, :cond_212

    .line 230
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x0

    #setter for: Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z
    invoke-static {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->access$402(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    const-string v1, "TerminalMode"

    const-string v2, "1@@INVISIBLE !!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1c9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mRssiShowing:Z
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$400(Lcom/android/sprintmenu/TerminalMode;)Z

    move-result v1

    if-nez v1, :cond_1e6

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const-string v1, "TerminalMode"

    const-string v2, "3@@INVISIBLE !!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1e6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_96

    .line 200
    .end local v15           #index:I
    .end local v19           #sString:Ljava/lang/String;
    .end local v20           #value:I
    :cond_1ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v14, 0x22

    add-int v2, v2, v16

    aget-byte v2, v9, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_ea

    .line 202
    :cond_206
    const-string v1, ""

    goto/16 :goto_117

    .line 226
    .restart local v15       #index:I
    .restart local v19       #sString:Ljava/lang/String;
    .restart local v20       #value:I
    :cond_20a
    const-string v1, "TerminalMode"

    const-string v2, "RSSI not Testing !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 234
    :cond_212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-boolean v1, v1, Lcom/android/sprintmenu/TerminalMode;->bwaiting:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_235

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_235
    :try_start_235
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 244
    const-string v1, "TerminalMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v1, 0x5a

    move/from16 v0, v20

    if-gt v0, v1, :cond_2c5

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const v3, 0x7f0500a8

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/TerminalMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->setResult(I)V

    .line 257
    :goto_29c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v1, v1, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mRemoveWindow:Lcom/android/sprintmenu/TerminalMode$RemoveWindow;
    invoke-static {v2}, Lcom/android/sprintmenu/TerminalMode;->access$800(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v1, v1, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mRemoveWindow:Lcom/android/sprintmenu/TerminalMode$RemoveWindow;
    invoke-static {v2}, Lcom/android/sprintmenu/TerminalMode;->access$800(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$RemoveWindow;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1c9

    .line 259
    :catch_2c2
    move-exception v1

    goto/16 :goto_1c9

    .line 251
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const v3, 0x7f0500a9

    invoke-virtual {v2, v3}, Lcom/android/sprintmenu/TerminalMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->setResult(I)V
    :try_end_2fd
    .catch Ljava/lang/NumberFormatException; {:try_start_235 .. :try_end_2fd} :catch_2c2

    goto :goto_29c

    .line 271
    .end local v15           #index:I
    .end local v16           #j:I
    .end local v18           #rowString:Ljava/lang/String;
    .end local v19           #sString:Ljava/lang/String;
    .end local v20           #value:I
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #calls: Lcom/android/sprintmenu/TerminalMode;->AnalisysString()V
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$900(Lcom/android/sprintmenu/TerminalMode;)V

    goto/16 :goto_14

    .line 278
    .end local v9           #buf:[B
    .end local v14           #i:I
    :sswitch_307
    const-string v1, "TerminalMode"

    const-string v2, "EVENT_TICK!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v2}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->currentModeTypeForEnd:C
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1100(Lcom/android/sprintmenu/TerminalMode;)C

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v4}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v5}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v6}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    #calls: Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V
    invoke-static/range {v1 .. v6}, Lcom/android/sprintmenu/TerminalMode;->access$1200(Lcom/android/sprintmenu/TerminalMode;CCCIC)V

    goto/16 :goto_14

    .line 285
    :sswitch_34f
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_35c

    .line 286
    const-string v1, "TerminalMode"

    const-string v2, "Exception Occur!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 288
    :cond_35c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-virtual {v1}, Lcom/android/sprintmenu/TerminalMode;->displaySecondaryTestResult()V

    goto/16 :goto_14

    .line 297
    :sswitch_365
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #ar:Landroid/os/AsyncResult;
    check-cast v7, Landroid/os/AsyncResult;

    .line 298
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 301
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object/from16 v17, v1

    check-cast v17, [B

    .line 302
    .local v17, respId:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const-string v2, "gsm.default.siomode"

    invoke-static {}, Lcom/android/sprintmenu/TerminalMode;->access$1300()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v17, v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/sprintmenu/TerminalMode;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 304
    .local v8, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 307
    .local v11, dos:Ljava/io/DataOutputStream;
    const/4 v13, 0x4

    .line 308
    .local v13, fileSize:I
    const/16 v1, 0xc

    :try_start_396
    invoke-virtual {v11, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 309
    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 310
    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 311
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$1400(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v3, v3, Lcom/android/sprintmenu/TerminalMode;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3c1
    .catchall {:try_start_396 .. :try_end_3c1} :catchall_3df
    .catch Ljava/io/IOException; {:try_start_396 .. :try_end_3c1} :catch_3cc

    .line 316
    :try_start_3c1
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_3c1 .. :try_end_3c4} :catch_416

    .line 317
    :goto_3c4
    :try_start_3c4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c7
    .catch Ljava/io/IOException; {:try_start_3c4 .. :try_end_3c7} :catch_3c9

    goto/16 :goto_14

    :catch_3c9
    move-exception v1

    goto/16 :goto_14

    .line 313
    :catch_3cc
    move-exception v12

    .line 314
    .local v12, e:Ljava/io/IOException;
    :try_start_3cd
    const-string v1, "TerminalMode"

    const-string v2, "error in writing EVENT_GET_SIO_MODE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d4
    .catchall {:try_start_3cd .. :try_end_3d4} :catchall_3df

    .line 316
    :try_start_3d4
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d7
    .catch Ljava/io/IOException; {:try_start_3d4 .. :try_end_3d7} :catch_418

    .line 317
    :goto_3d7
    :try_start_3d7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3da
    .catch Ljava/io/IOException; {:try_start_3d7 .. :try_end_3da} :catch_3dc

    goto/16 :goto_14

    :catch_3dc
    move-exception v1

    goto/16 :goto_14

    .line 316
    .end local v12           #e:Ljava/io/IOException;
    :catchall_3df
    move-exception v1

    :try_start_3e0
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3e3
    .catch Ljava/io/IOException; {:try_start_3e0 .. :try_end_3e3} :catch_41a

    .line 317
    :goto_3e3
    :try_start_3e3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e6
    .catch Ljava/io/IOException; {:try_start_3e3 .. :try_end_3e6} :catch_41c

    :goto_3e6
    throw v1

    .line 324
    .end local v8           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v13           #fileSize:I
    .end local v17           #respId:[B
    :sswitch_3e7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7           #ar:Landroid/os/AsyncResult;
    check-cast v7, Landroid/os/AsyncResult;

    .line 325
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 328
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object/from16 v17, v1

    check-cast v17, [B

    .line 329
    .restart local v17       #respId:[B
    const/4 v10, 0x0

    .line 330
    .local v10, channel:I
    const/4 v1, 0x1

    aget-byte v1, v17, v1

    and-int/lit16 v10, v1, 0xff

    .line 331
    shl-int/lit8 v10, v10, 0x8

    .line 332
    const/4 v1, 0x0

    aget-byte v1, v17, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v10, v1

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sprintmenu/TerminalMode$1;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const-string v2, "gsm.default.channel"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/sprintmenu/TerminalMode;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 316
    .end local v10           #channel:I
    .restart local v8       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    .restart local v13       #fileSize:I
    :catch_416
    move-exception v1

    goto :goto_3c4

    .restart local v12       #e:Ljava/io/IOException;
    :catch_418
    move-exception v1

    goto :goto_3d7

    .end local v12           #e:Ljava/io/IOException;
    :catch_41a
    move-exception v2

    goto :goto_3e3

    .line 317
    :catch_41c
    move-exception v2

    goto :goto_3e6

    .line 145
    :sswitch_data_41e
    .sparse-switch
        0x22 -> :sswitch_34f
        0x67 -> :sswitch_3e7
        0x68 -> :sswitch_365
        0x3e9 -> :sswitch_307
        0x3f0 -> :sswitch_15
    .end sparse-switch
.end method
