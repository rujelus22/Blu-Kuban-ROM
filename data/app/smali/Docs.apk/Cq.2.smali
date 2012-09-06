.class public LCq;
.super Ljava/lang/Object;
.source "LayoutChangeBatcher.java"

# interfaces
.implements LCa;
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:I

.field private final a:LCC;

.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(LCC;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, LCq;->a:Z

    .line 27
    iput-object p1, p0, LCq;->a:LCC;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, LCq;->a:Z

    if-eqz v0, :cond_23

    .line 32
    iget v0, p0, LCq;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCq;->a:I

    .line 33
    iget v0, p0, LCq;->b:I

    add-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCq;->b:I

    .line 34
    sub-int v0, p4, p3

    .line 35
    iget v1, p0, LCq;->b:I

    add-int/2addr v1, v0

    iput v1, p0, LCq;->b:I

    .line 36
    iget v1, p0, LCq;->c:I

    add-int/2addr v0, v1

    iput v0, p0, LCq;->c:I

    .line 40
    :goto_22
    return-void

    .line 38
    :cond_23
    iget-object v0, p0, LCq;->a:LCC;

    invoke-interface {v0, p1, p2, p3, p4}, LCC;->a(Ljava/lang/CharSequence;III)V

    goto :goto_22
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, LCq;->a:Z

    .line 78
    const v0, 0x7fffffff

    iput v0, p0, LCq;->a:I

    .line 79
    iput v1, p0, LCq;->b:I

    .line 80
    iput v1, p0, LCq;->c:I

    .line 81
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, LCq;->a:Z

    .line 86
    iget v0, p0, LCq;->b:I

    iget v1, p0, LCq;->a:I

    sub-int/2addr v0, v1

    .line 87
    iget v1, p0, LCq;->c:I

    sub-int v1, v0, v1

    .line 88
    iget v2, p0, LCq;->b:I

    iget v3, p0, LCq;->a:I

    if-lt v2, v3, :cond_19

    .line 89
    iget-object v2, p0, LCq;->a:LCC;

    iget v3, p0, LCq;->a:I

    invoke-interface {v2, p1, v3, v1, v0}, LCC;->a(Ljava/lang/CharSequence;III)V

    .line 91
    :cond_19
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_b

    .line 58
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, LCq;->a(Ljava/lang/CharSequence;III)V

    .line 59
    :cond_b
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_12

    .line 70
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, LCq;->a(Ljava/lang/CharSequence;III)V

    .line 71
    sub-int v0, p6, p5

    sub-int v1, p6, p5

    invoke-direct {p0, p1, p5, v0, v1}, LCq;->a(Ljava/lang/CharSequence;III)V

    .line 73
    :cond_12
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_b

    .line 64
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, LCq;->a(Ljava/lang/CharSequence;III)V

    .line 65
    :cond_b
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, LCq;->a(Ljava/lang/CharSequence;III)V

    .line 49
    return-void
.end method
