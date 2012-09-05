.class public Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "InternalURLSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;
    }
.end annotation


# instance fields
.field private mBaseColor:I

.field private mContext:Landroid/content/Context;

.field mListener:Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "listener"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mListener:Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;

    .line 17
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mUrl:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    const/16 v1, 0xa7

    const/16 v2, 0xde

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mBaseColor:I

    .line 33
    iput-object p2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mListener:Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;

    .line 34
    iput-object p3, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mUrl:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "widget"

    .prologue
    .line 46
    if-eqz p1, :cond_14

    .line 47
    instance-of v2, p1, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    if-eqz v2, :cond_14

    move-object v2, p1

    .line 48
    check-cast v2, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isPlaySound()Z

    move-result v1

    .line 50
    .local v1, sound:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 55
    .end local v1           #sound:Z
    :cond_14
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mListener:Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;

    if-eqz v2, :cond_20

    .line 56
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mListener:Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mUrl:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;->onClick(Landroid/view/View;Ljava/lang/String;)V

    .line 64
    :cond_1f
    :goto_1f
    return-void

    .line 58
    :cond_20
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1f

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter "ds"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 41
    iget v0, p0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;->mBaseColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 42
    return-void
.end method
