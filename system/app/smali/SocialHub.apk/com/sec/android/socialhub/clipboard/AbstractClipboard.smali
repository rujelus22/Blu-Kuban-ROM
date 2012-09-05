.class public abstract Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
.super Ljava/lang/Object;
.source "AbstractClipboard.java"


# instance fields
.field protected mClipboard:Landroid/text/ClipboardManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mClipboard:Landroid/text/ClipboardManager;

    .line 12
    iput-object v0, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mContext:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mContext:Landroid/content/Context;

    .line 17
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mClipboard:Landroid/text/ClipboardManager;

    .line 18
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;)V
    .registers 6
    .parameter "object"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->getContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 31
    iget-object v1, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mClipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_11
    iget-object v1, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mContext:Landroid/content/Context;

    const v2, 0x7f080060

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    return-void

    .line 35
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->mClipboard:Landroid/text/ClipboardManager;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected abstract getContent(Ljava/lang/Object;)Ljava/lang/String;
.end method
