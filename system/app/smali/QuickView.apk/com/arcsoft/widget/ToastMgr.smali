.class public Lcom/arcsoft/widget/ToastMgr;
.super Ljava/lang/Object;
.source "ToastMgr.java"


# instance fields
.field private mQuickToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    .line 30
    return-void
.end method


# virtual methods
.method public cancelLongMessage(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textView"

    .prologue
    .line 74
    if-eqz p1, :cond_a

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_a
    return-void
.end method

.method public cancelQuickMessage()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 54
    iget-object v0, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    .line 57
    :cond_c
    return-void
.end method

.method public showLongMessage(Landroid/widget/TextView;I)V
    .registers 4
    .parameter "textView"
    .parameter "resId"

    .prologue
    .line 67
    if-eqz p1, :cond_9

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :cond_9
    return-void
.end method

.method public showLongMessage(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .parameter "textView"
    .parameter "str"

    .prologue
    .line 60
    if-eqz p1, :cond_9

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_9
    return-void
.end method

.method public showQuickMessage(Landroid/content/Context;IIZ)V
    .registers 6
    .parameter "context"
    .parameter "resId"
    .parameter "length"
    .parameter "bCancelOnPause"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, str:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_7
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/arcsoft/widget/ToastMgr;->showQuickMessage(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 50
    return-void
.end method

.method public showQuickMessage(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7
    .parameter "context"
    .parameter "str"
    .parameter "length"
    .parameter "bCancelOnPause"

    .prologue
    .line 33
    const/4 v1, 0x1

    if-ne p4, v1, :cond_13

    .line 34
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    .line 35
    iget-object v1, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    if-eqz v1, :cond_12

    .line 36
    iget-object v1, p0, Lcom/arcsoft/widget/ToastMgr;->mQuickToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 43
    :cond_12
    :goto_12
    return-void

    .line 39
    :cond_13
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 40
    .local v0, quick:Landroid/widget/Toast;
    if-eqz v0, :cond_12

    .line 41
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method
