.class public Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;
.super Lcom/infraware/office/evengine/EvClipBoardHelper;
.source "EvClipBoardHelperStd.java"


# instance fields
.field private mClipboardManager:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvClipBoardHelper;-><init>(Landroid/app/Activity;)V

    .line 16
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 17
    return-void
.end method


# virtual methods
.method public ClipBoardfinalize()V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->ClipBoardfinalize()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 22
    return-void
.end method

.method public OnEditCopyCut(ILjava/lang/String;)V
    .registers 3
    .parameter "nType"
    .parameter "data"

    .prologue
    .line 94
    return-void
.end method

.method public doPaste(Lcom/infraware/office/evengine/EvInterface;)Z
    .registers 9
    .parameter "evi"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v4, :cond_28

    .line 76
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, bNative:I
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetEditorMode_Editor()I

    move-result v4

    if-eq v4, v6, :cond_1f

    .line 81
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    .line 83
    .local v1, opInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    if-eqz v1, :cond_1f

    .line 84
    iget v4, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bHasNativeClipboardData:I

    if-nez v4, :cond_26

    move v0, v2

    .line 87
    .end local v1           #opInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    :cond_1f
    :goto_1f
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v0, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    .line 91
    .end local v0           #bNative:I
    :goto_25
    return v2

    .restart local v0       #bNative:I
    .restart local v1       #opInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    :cond_26
    move v0, v3

    .line 84
    goto :goto_1f

    .end local v0           #bNative:I
    .end local v1           #opInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    :cond_28
    move v2, v3

    .line 91
    goto :goto_25
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v1, :cond_f

    .line 35
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_e

    .line 26
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setData(ILjava/lang/String;)V
    .registers 4
    .parameter "nType"
    .parameter "str"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_b

    .line 61
    if-nez p1, :cond_c

    .line 62
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_b
    :goto_b
    return-void

    .line 64
    :cond_c
    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    .line 67
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_b
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "cs"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_9
    return-void
.end method
