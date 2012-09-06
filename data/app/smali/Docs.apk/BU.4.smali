.class LBU;
.super Ljava/lang/Object;
.source "StringTree.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:LBQ;

.field private final a:Landroid/text/SpanWatcher;

.field private final a:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(LBQ;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-object p1, p0, LBU;->a:LBQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    instance-of v0, p2, Landroid/text/SpanWatcher;

    if-eqz v0, :cond_18

    move-object v0, p2

    .line 68
    check-cast v0, Landroid/text/SpanWatcher;

    iput-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    .line 72
    :goto_f
    instance-of v0, p2, Landroid/text/TextWatcher;

    if-eqz v0, :cond_1b

    .line 73
    check-cast p2, Landroid/text/TextWatcher;

    iput-object p2, p0, LBU;->a:Landroid/text/TextWatcher;

    .line 77
    :goto_17
    return-void

    .line 70
    :cond_18
    iput-object v1, p0, LBU;->a:Landroid/text/SpanWatcher;

    goto :goto_f

    .line 75
    :cond_1b
    iput-object v1, p0, LBU;->a:Landroid/text/TextWatcher;

    goto :goto_17
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 106
    :cond_b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 113
    :cond_b
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    if-eqz v0, :cond_b

    .line 82
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 84
    :cond_b
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    if-eqz v0, :cond_10

    .line 90
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 92
    :cond_10
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, LBU;->a:Landroid/text/SpanWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 99
    :cond_b
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, LBU;->a:Landroid/text/TextWatcher;

    iget-object v1, p0, LBU;->a:LBQ;

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 120
    :cond_b
    return-void
.end method
