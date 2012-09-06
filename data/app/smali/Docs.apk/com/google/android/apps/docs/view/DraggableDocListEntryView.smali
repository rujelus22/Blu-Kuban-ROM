.class public Lcom/google/android/apps/docs/view/DraggableDocListEntryView;
.super Landroid/widget/FrameLayout;
.source "DraggableDocListEntryView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    sget v1, LcU;->doc_entry_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->addView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->a:I

    return p1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Point;)Landroid/view/View$DragShadowBuilder;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, LaaA;

    invoke-direct {v0, p0, p2, p0, p1}, LaaA;-><init>(Landroid/view/View;Landroid/graphics/Point;Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->b:I

    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    new-instance v0, Laay;

    invoke-direct {v0, p0}, Laay;-><init>(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    new-instance v0, Laaz;

    invoke-direct {v0, p0}, Laaz;-><init>(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    return-void
.end method
