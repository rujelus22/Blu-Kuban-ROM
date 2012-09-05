.class public Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SlideNoteActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;


# static fields
.field private static LOG_CAT:Ljava/lang/String;


# instance fields
.field private inputBox:Landroid/widget/EditText;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private m_nPageNum:I

.field private m_slideBitmapHeight:I

.field private m_slideBitmapWidth:I

.field private m_strCmp:Ljava/lang/String;

.field private slideNoteImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "SlideNoteActivity"

    sput-object v0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->LOG_CAT:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->slideNoteImg:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    .line 27
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    .line 30
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I

    .line 31
    iput v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I

    return v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    return v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    return-void
.end method

.method private setSlideNotePage()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 97
    const v2, 0x7f0c01eb

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 98
    .local v0, leftBtn:Landroid/widget/ImageButton;
    const v2, 0x7f0c01ee

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 100
    .local v1, rightBtn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 104
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    :cond_22
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-ne v2, v3, :cond_31

    .line 106
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    :cond_31
    return-void
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnDrawBitmap()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 155
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->slideNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bBitmapIamage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"

    .prologue
    .line 166
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public SlideNoteHandler(Landroid/view/View;)V
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 34
    sget-object v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->LOG_CAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_15a

    .line 94
    :goto_20
    :pswitch_20
    return-void

    .line 37
    :pswitch_21
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    if-le v2, v5, :cond_9b

    .line 38
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, strCurText:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    .line 41
    :cond_37
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4e

    .line 42
    if-nez v0, :cond_8f

    .line 43
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 48
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I

    iget v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I

    iget v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideNote(III)V

    .line 49
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSlideNoteString_Editor(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, strForSet:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    .line 53
    sget-object v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->LOG_CAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strForSet:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0           #strCurText:Ljava/lang/String;
    .end local v1           #strForSet:Ljava/lang/String;
    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setSlideNotePage()V

    goto :goto_20

    .line 45
    .restart local v0       #strCurText:Ljava/lang/String;
    :cond_8f
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_4e

    .line 55
    .end local v0           #strCurText:Ljava/lang/String;
    :cond_9b
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    if-ne v2, v5, :cond_8b

    .line 56
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .restart local v0       #strCurText:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_8b

    .line 64
    .end local v0           #strCurText:Ljava/lang/String;
    :pswitch_b5
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-ge v2, v3, :cond_138

    .line 65
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #strCurText:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-nez v2, :cond_d3

    .line 67
    const-string v2, ""

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    .line 68
    :cond_d3
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_ea

    .line 69
    if-nez v0, :cond_12c

    .line 70
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 75
    :cond_ea
    :goto_ea
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I

    iget v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I

    iget v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideNote(III)V

    .line 76
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSlideNoteString_Editor(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1       #strForSet:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->LOG_CAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " strForSet:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0           #strCurText:Ljava/lang/String;
    .end local v1           #strForSet:Ljava/lang/String;
    :cond_127
    :goto_127
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setSlideNotePage()V

    goto/16 :goto_20

    .line 72
    .restart local v0       #strCurText:Ljava/lang/String;
    :cond_12c
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_ea

    .line 82
    .end local v0           #strCurText:Ljava/lang/String;
    :cond_138
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-ne v2, v3, :cond_127

    .line 83
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #strCurText:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_127

    .line 35
    :pswitch_data_15a
    .packed-switch 0x7f0c01eb
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_b5
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 7

    .prologue
    .line 184
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, strCurText:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 186
    const-string v2, ""

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    .line 187
    :cond_12
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2a

    .line 188
    if-nez v1, :cond_39

    .line 189
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 193
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->finish()V

    .line 196
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 197
    return-void

    .line 191
    .end local v0           #intent:Landroid/content/Intent;
    :cond_39
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideNoteInput(ILjava/lang/String;I)V

    goto :goto_2a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setContentView(I)V

    .line 112
    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setTitle(I)V

    .line 114
    const v0, 0x7f0c01ed

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->slideNoteImg:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0c01ef

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    new-instance v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    new-instance v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;-><init>(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 147
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 149
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I

    .line 150
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setSlideNotePage()V

    .line 151
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    const v1, 0x7f0801bd

    .line 201
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->setTitle(I)V

    .line 202
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 203
    return-void
.end method
