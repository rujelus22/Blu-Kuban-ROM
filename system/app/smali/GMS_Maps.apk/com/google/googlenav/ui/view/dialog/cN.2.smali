.class Lcom/google/googlenav/ui/view/dialog/cN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/ScrollView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cN;->c:I

    .line 192
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cN;->a:Landroid/widget/ScrollView;

    .line 193
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cN;->b:Landroid/widget/ScrollView;

    .line 194
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 199
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/cN;->c:I

    if-ne v1, v2, :cond_28

    .line 200
    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cN;->c:I

    .line 201
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cN;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cN;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_1a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cN;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cN;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_18

    .line 206
    :cond_28
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cN;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 207
    iput v2, p0, Lcom/google/googlenav/ui/view/dialog/cN;->c:I

    goto :goto_18
.end method
