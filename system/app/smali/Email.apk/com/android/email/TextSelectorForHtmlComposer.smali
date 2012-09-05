.class public Lcom/android/email/TextSelectorForHtmlComposer;
.super Ljava/lang/Object;
.source "TextSelectorForHtmlComposer.java"

# interfaces
.implements Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;
    }
.end annotation


# instance fields
.field private mComposerControl:Landroid/webkit/HtmlComposerView;

.field private mIsSCHMenu:Z

.field private mSCHMoveFlag:Z

.field private mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .registers 4
    .parameter "tc"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    .line 40
    iput-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    .line 41
    iput-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    .line 42
    iput-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mSCHMoveFlag:Z

    .line 45
    iput-object p1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/TextSelectorForHtmlComposer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    return p1
.end method

.method private createToolTip()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-nez v0, :cond_13

    .line 102
    new-instance v0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;-><init>(Lcom/android/email/TextSelectorForHtmlComposer;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_1f

    .line 106
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->show()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    .line 109
    :cond_1f
    return-void
.end method

.method private hide()V
    .registers 3

    .prologue
    .line 131
    const-string v0, "TextSelectorForHtmlComposer"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->hide()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    .line 137
    :cond_13
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .registers 3

    .prologue
    .line 112
    const-string v0, "TextSelectorForHtmlComposer"

    const-string v1, "clearSelection : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/email/TextSelectorForHtmlComposer;->hide()V

    .line 116
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer;->getTopWindow()Landroid/webkit/HtmlComposerView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 117
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer;->getTopWindow()Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 124
    :cond_17
    return-void
.end method

.method public getTopWindow()Landroid/webkit/HtmlComposerView;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method public isVisibleCursorHandler(I)V
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    packed-switch p1, :pswitch_data_70

    .line 98
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 54
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->show()V

    .line 56
    iput-boolean v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_5

    .line 60
    :pswitch_16
    iput-boolean v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mSCHMoveFlag:Z

    .line 62
    :pswitch_18
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v1, v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->hide()V

    .line 65
    iput-boolean v2, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_5

    .line 69
    :pswitch_30
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v1, v0, :cond_48

    .line 70
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    if-ne v1, v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->hide()V

    .line 72
    iput-boolean v2, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_5

    .line 75
    :cond_48
    iget-boolean v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mSCHMoveFlag:Z

    if-ne v0, v1, :cond_4f

    .line 76
    iput-boolean v2, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mSCHMoveFlag:Z

    goto :goto_5

    .line 78
    :cond_4f
    invoke-direct {p0}, Lcom/android/email/TextSelectorForHtmlComposer;->createToolTip()V

    goto :goto_5

    .line 84
    :pswitch_53
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-nez v0, :cond_5b

    .line 85
    invoke-direct {p0}, Lcom/android/email/TextSelectorForHtmlComposer;->createToolTip()V

    goto :goto_5

    .line 89
    :cond_5b
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->show()V

    .line 91
    iput-boolean v1, p0, Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z

    goto :goto_5

    .line 52
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_30
        :pswitch_18
        :pswitch_53
    .end packed-switch
.end method
