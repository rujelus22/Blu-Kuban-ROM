.class LDJ;
.super Landroid/os/Handler;
.source "MultiTapKeyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDI;

.field private a:Landroid/text/Editable;


# direct methods
.method public constructor <init>(LDI;Landroid/text/Editable;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, LDJ;->a:LDI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    iput-object p2, p0, LDJ;->a:Landroid/text/Editable;

    .line 264
    iget-object v0, p0, LDJ;->a:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p0, LDJ;->a:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, LDJ;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method static synthetic a(LDJ;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, LDJ;->a:Landroid/text/Editable;

    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 272
    iget-object v0, p0, LDJ;->a:Landroid/text/Editable;

    .line 274
    if-eqz v0, :cond_26

    .line 275
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 276
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 278
    sget-object v3, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 279
    sget-object v4, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 281
    if-ne v1, v3, :cond_23

    if-ne v2, v4, :cond_23

    .line 282
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 285
    :cond_23
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 287
    :cond_26
    return-void
.end method
