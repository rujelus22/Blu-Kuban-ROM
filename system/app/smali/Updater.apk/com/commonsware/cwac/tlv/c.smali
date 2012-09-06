.class final Lcom/commonsware/cwac/tlv/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/commonsware/cwac/tlv/TouchListView;


# direct methods
.method constructor <init>(Lcom/commonsware/cwac/tlv/TouchListView;)V
    .registers 2

    iput-object p1, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v0}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_47

    const/high16 v0, 0x447a

    cmpl-float v0, p3, v0

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v0}, Lcom/commonsware/cwac/tlv/TouchListView;->b(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->a(Lcom/commonsware/cwac/tlv/TouchListView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v0}, Lcom/commonsware/cwac/tlv/TouchListView;->c(Lcom/commonsware/cwac/tlv/TouchListView;)V

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v0}, Lcom/commonsware/cwac/tlv/TouchListView;->d(Lcom/commonsware/cwac/tlv/TouchListView;)Lcom/commonsware/cwac/tlv/f;

    move-result-object v0

    iget-object v1, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v1}, Lcom/commonsware/cwac/tlv/TouchListView;->e(Lcom/commonsware/cwac/tlv/TouchListView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/commonsware/cwac/tlv/f;->a(I)V

    iget-object v0, p0, Lcom/commonsware/cwac/tlv/c;->a:Lcom/commonsware/cwac/tlv/TouchListView;

    invoke-static {v0}, Lcom/commonsware/cwac/tlv/TouchListView;->f(Lcom/commonsware/cwac/tlv/TouchListView;)V

    :cond_45
    const/4 v0, 0x1

    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method
