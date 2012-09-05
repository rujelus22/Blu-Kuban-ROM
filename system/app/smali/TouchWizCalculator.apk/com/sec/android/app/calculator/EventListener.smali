.class Lcom/sec/android/app/calculator/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;


# static fields
.field private static disText:Ljava/lang/String;


# instance fields
.field equal:I

.field historyCount:[I

.field mCheck:Z

.field mDisplay:Landroid/widget/EditText;

.field mDisplaySelectAll:Z

.field mDisplaySelectionE:I

.field mDisplaySelectionS:I

.field mEnd:I

.field mHandler:Lcom/sec/android/app/calculator/EventHandler;

.field mHisScreen:Landroid/widget/EditText;

.field mHistory:Lcom/sec/android/app/calculator/History;

.field mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

.field mStart:I

.field mdisCheck:Z

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mCheck:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mdisCheck:Z

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->historyCount:[I

    .line 58
    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    .line 59
    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearSB()V
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 102
    .local v0, len:I
    if-nez v0, :cond_9

    .line 105
    :goto_8
    return-void

    .line 104
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private isSkippingBtn(I)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, result:Z
    packed-switch p1, :pswitch_data_c

    .line 294
    :pswitch_4
    const/4 v1, 0x0

    .line 297
    :goto_5
    return v1

    .line 291
    :pswitch_6
    const/4 v0, 0x1

    .line 296
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->clearBlocks()V

    move v1, v0

    .line 297
    goto :goto_5

    .line 284
    :pswitch_data_c
    .packed-switch 0x7f05000b
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public clearBlocks()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    .line 278
    iput v1, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 280
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    if-ne v2, v5, :cond_32

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/calculator/EventListener;->isSkippingBtn(I)Z

    move-result v2

    if-ne v2, v5, :cond_1f

    .line 275
    :goto_1e
    return-void

    .line 116
    :cond_1f
    iget v2, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget v3, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    if-eq v2, v3, :cond_32

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget v4, p0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 125
    :cond_32
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->getFrontText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, tempText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 130
    .local v0, id:I
    packed-switch v0, :pswitch_data_1f2

    .line 245
    :goto_48
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_91

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v2

    if-gez v2, :cond_91

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isOpenedSignParenthesis()Z

    move-result v2

    if-ne v2, v5, :cond_91

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    .line 253
    :cond_91
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_a0

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    .line 257
    :cond_a0
    sparse-switch v0, :sswitch_data_23c

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget v2, v2, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    if-eqz v2, :cond_b4

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_b4
    :sswitch_b4
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->clearBlocks()V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventListener;->clearSB()V

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1e

    .line 132
    :pswitch_c7
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onEnter()V

    goto/16 :goto_48

    .line 135
    :pswitch_ce
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    goto/16 :goto_48

    .line 138
    :pswitch_d5
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onBackspace()V

    goto/16 :goto_48

    .line 141
    :pswitch_dc
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onParenthesis()V

    goto/16 :goto_48

    .line 144
    :pswitch_e3
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onDecimal()V

    goto/16 :goto_48

    .line 147
    :pswitch_ea
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onPlusMinus()V

    goto/16 :goto_48

    .line 150
    :pswitch_f1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onFraction()V

    goto/16 :goto_48

    .line 153
    :pswitch_f8
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->onAbs()V

    goto/16 :goto_48

    .line 156
    :pswitch_ff
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 159
    :pswitch_108
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 162
    :pswitch_111
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 165
    :pswitch_11a
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 168
    :pswitch_123
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 171
    :pswitch_12c
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 174
    :pswitch_135
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 177
    :pswitch_13e
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 180
    :pswitch_147
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 183
    :pswitch_150
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 186
    :pswitch_159
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 189
    :pswitch_162
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u2212"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 192
    :pswitch_16b
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u00d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 195
    :pswitch_174
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u00f7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 198
    :pswitch_17d
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u221a("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 201
    :pswitch_186
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 204
    :pswitch_18f
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 208
    :pswitch_198
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "sin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 211
    :pswitch_1a1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "tan("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 214
    :pswitch_1aa
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "cos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 218
    :pswitch_1b3
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "log("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 221
    :pswitch_1bc
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "ln("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 224
    :pswitch_1c5
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "e^("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 227
    :pswitch_1ce
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "^(2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 230
    :pswitch_1d7
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "^("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 233
    :pswitch_1e0
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "\u03c0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 237
    :pswitch_1e9
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 130
    :pswitch_data_1f2
    .packed-switch 0x7f05000a
        :pswitch_ce
        :pswitch_174
        :pswitch_16b
        :pswitch_d5
        :pswitch_13e
        :pswitch_147
        :pswitch_150
        :pswitch_162
        :pswitch_123
        :pswitch_12c
        :pswitch_135
        :pswitch_159
        :pswitch_108
        :pswitch_111
        :pswitch_11a
        :pswitch_dc
        :pswitch_ff
        :pswitch_e3
        :pswitch_ea
        :pswitch_c7
        :pswitch_17d
        :pswitch_186
        :pswitch_18f
        :pswitch_198
        :pswitch_1b3
        :pswitch_1aa
        :pswitch_1bc
        :pswitch_1a1
        :pswitch_f1
        :pswitch_1c5
        :pswitch_1ce
        :pswitch_1d7
        :pswitch_f8
        :pswitch_1e0
        :pswitch_1e9
    .end packed-switch

    .line 257
    :sswitch_data_23c
    .sparse-switch
        0x7f050004 -> :sswitch_b4
        0x7f050005 -> :sswitch_b4
        0x7f05001d -> :sswitch_b4
    .end sparse-switch
.end method

.method public onKeypressClick(C)V
    .registers 4
    .parameter "sign"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    .line 574
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/EventHandler;->insertKeyBoard(C)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 576
    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventListener;->clearSB()V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 578
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->getmContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    .line 95
    :cond_f
    :goto_f
    return v1

    .line 89
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 91
    .local v0, id:I
    const v2, 0x7f05000d

    if-ne v0, v2, :cond_f

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v2, v2, Lcom/sec/android/app/calculator/EventHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .registers 5
    .parameter "panel"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    .line 540
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->setAniEnd(Z)V

    .line 565
    :cond_29
    :goto_29
    return v2

    .line 548
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isDisplayScreen()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isHistoryScreen()Z

    move-result v0

    if-nez v0, :cond_29

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setOpenClick(Z)V

    goto :goto_29
.end method

.method public onPanelClosed(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 7
    .parameter "panel"

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 309
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 361
    .local v0, cursor:I
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_43

    move v0, v1

    .end local v0           #cursor:I
    :cond_43
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 365
    return-void
.end method

.method public onPanelClosedForConfig()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 419
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 420
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 421
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 424
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, dText:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, start:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8b

    .line 429
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_3a

    .line 430
    const/4 v5, 0x1

    .line 432
    :cond_3a
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->isCheckResult()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 433
    const-string v1, ""

    .line 442
    :cond_44
    :goto_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v4, s:Ljava/lang/StringBuilder;
    move v2, v5

    .local v2, i:I
    :goto_4a
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    if-ge v2, v6, :cond_91

    .line 444
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v6, "\n="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v6, v6, Lcom/sec/android/app/calculator/History;->mPos:I

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_8e

    const-string v6, ""

    :goto_79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 434
    .end local v2           #i:I
    .end local v4           #s:Ljava/lang/StringBuilder;
    :cond_7f
    iget v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_44

    .line 435
    iget v6, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 437
    :cond_8b
    const-string v1, ""

    goto :goto_44

    .line 447
    .restart local v2       #i:I
    .restart local v4       #s:Ljava/lang/StringBuilder;
    :cond_8e
    const-string v6, "\n\n"

    goto :goto_79

    .line 449
    :cond_91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a5

    .line 450
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_d4

    const-string v3, ""

    .line 451
    .local v3, magin:Ljava/lang/String;
    :goto_9f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .end local v3           #magin:Ljava/lang/String;
    :cond_a5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v8, v4}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 456
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 457
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v0

    .line 458
    .local v0, cursor:I
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_cb

    move v0, v7

    .end local v0           #cursor:I
    :cond_cb
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 460
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 461
    return-void

    .line 450
    :cond_d4
    const-string v3, "\n\n"

    goto :goto_9f
.end method

.method public onPanelOpened(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 9
    .parameter "panel"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 466
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 467
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 474
    iget v1, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    .line 475
    .local v1, x:I
    iget v2, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    .line 478
    .local v2, y:I
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3, v6}, Lcom/sec/android/widgetapp/calculator/Panel;->setAniEnd(Z)V

    .line 488
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 489
    .local v0, len:I
    if-gez v1, :cond_3a

    const/4 v1, 0x0

    .line 490
    :cond_3a
    if-le v1, v0, :cond_3d

    move v1, v0

    .line 491
    :cond_3d
    if-gez v2, :cond_40

    const/4 v2, 0x0

    .line 492
    :cond_40
    if-le v2, v0, :cond_43

    move v2, v0

    .line 495
    :cond_43
    if-eq v1, v2, :cond_73

    .line 496
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 497
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->showCursor()V

    .line 499
    iget-boolean v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    if-eqz v3, :cond_63

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    .line 527
    :goto_58
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 529
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->setOpenClick(Z)V

    .line 531
    return-void

    .line 503
    :cond_63
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/calculator/EventListener$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/calculator/EventListener$1;-><init>(Lcom/sec/android/app/calculator/EventListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 509
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_58

    .line 524
    :cond_73
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_58
.end method

.method setHandler(Lcom/sec/android/app/calculator/EventHandler;Lcom/sec/android/widgetapp/calculator/Panel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;)V
    .registers 8
    .parameter "handler"
    .parameter "panelSwitcher"
    .parameter "display"
    .parameter "hisscr"
    .parameter "history"

    .prologue
    const/4 v1, 0x1

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    .line 71
    iput-object p2, p0, Lcom/sec/android/app/calculator/EventListener;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    .line 72
    iput-object p5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    .line 73
    iput-object p4, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    .line 74
    iput-object p3, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    iput v0, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    .line 82
    return-void
.end method

.method public updateHistory()V
    .registers 8

    .prologue
    .line 375
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/calculator/EventListener;->disText:Ljava/lang/String;

    .line 376
    sget-object v1, Lcom/sec/android/app/calculator/EventListener;->disText:Ljava/lang/String;

    .line 378
    .local v1, dText:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/calculator/EventListener;->equal:I

    .line 380
    const/4 v4, 0x0

    .line 381
    .local v4, start:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_61

    .line 382
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_26

    .line 383
    const/4 v4, 0x1

    .line 396
    :cond_26
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v3, s:Ljava/lang/StringBuilder;
    move v2, v4

    .local v2, i:I
    :goto_2c
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    if-ge v2, v5, :cond_67

    .line 398
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v5, "\n="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHistory:Lcom/sec/android/app/calculator/History;

    iget v5, v5, Lcom/sec/android/app/calculator/History;->mPos:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_64

    const-string v5, ""

    :goto_5b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 391
    .end local v2           #i:I
    .end local v3           #s:Ljava/lang/StringBuilder;
    :cond_61
    const-string v1, ""

    goto :goto_26

    .line 401
    .restart local v2       #i:I
    .restart local v3       #s:Ljava/lang/StringBuilder;
    :cond_64
    const-string v5, "\n\n"

    goto :goto_5b

    .line 405
    :cond_67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v5, :cond_80

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8e

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    iget v5, v5, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    if-eqz v5, :cond_8e

    .line 408
    :cond_80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_ac

    const-string v5, ""

    :goto_88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_8e
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventListener;->mHandler:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v0

    .line 413
    .local v0, cursor:I
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventListener;->mHisScreen:Landroid/widget/EditText;

    if-nez v0, :cond_a8

    const/4 v0, 0x0

    .end local v0           #cursor:I
    :cond_a8
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 414
    return-void

    .line 408
    :cond_ac
    const-string v5, "\n\n"

    goto :goto_88
.end method
