.class public Lcom/android/task/TaskTextView;
.super Landroid/widget/TextView;
.source "TaskTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/android/task/TaskTextView;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public setTextEX(Ljava/lang/CharSequence;Ljava/lang/Long;)V
    .registers 8
    .parameter "text"
    .parameter "date"

    .prologue
    .line 26
    const-string v1, "TaskTextView"

    const-string v2, "======== setTextEX ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/task/TaskTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 31
    .local v0, mText:Landroid/text/Spannable;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_26

    .line 32
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/task/TaskTextView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/task/TaskLinkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;J)Z

    .line 34
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/task/TaskTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 36
    :cond_26
    return-void
.end method
