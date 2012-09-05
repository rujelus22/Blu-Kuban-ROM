.class public Lcom/google/android/youtube/videos/ui/MovieTableView;
.super Landroid/widget/TableLayout;
.source "MovieTableView.java"


# static fields
.field private static final DUMMY_LAYOUT_PARAMS:Landroid/widget/TableRow$LayoutParams;


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentRow:Landroid/widget/TableRow;

.field private fixedSizeViews:Z

.field private hSpacing:I

.field private maxItems:I

.field private numColumns:I

.field private spaceInCurrentRow:I

.field private vSpacing:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/google/android/youtube/videos/ui/MovieTableView;->DUMMY_LAYOUT_PARAMS:Landroid/widget/TableRow$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/ui/MovieTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/R$styleable;->MovieTableView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->vSpacing:I

    .line 48
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->hSpacing:I

    .line 49
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->fixedSizeViews:Z

    .line 50
    const/4 v1, 0x3

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->maxItems:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->configureStretchableColumns()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->children:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 99
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->fixedSizeViews:Z

    if-eqz v1, :cond_48

    move v1, v2

    :goto_a
    iget-boolean v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->fixedSizeViews:Z

    if-eqz v4, :cond_4a

    const/4 v4, 0x0

    :goto_f
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 104
    .local v0, params:Landroid/widget/TableRow$LayoutParams;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    if-nez v1, :cond_4f

    .line 105
    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    invoke-super {p0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 107
    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->spaceInCurrentRow:I

    .line 108
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_4d

    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->vSpacing:I

    :goto_32
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 117
    :goto_35
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->spaceInCurrentRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->spaceInCurrentRow:I

    .line 120
    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->spaceInCurrentRow:I

    if-nez v1, :cond_47

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    .line 123
    :cond_47
    return-void

    .end local v0           #params:Landroid/widget/TableRow$LayoutParams;
    :cond_48
    move v1, v3

    .line 99
    goto :goto_a

    :cond_4a
    const/high16 v4, 0x3f80

    goto :goto_f

    .restart local v0       #params:Landroid/widget/TableRow$LayoutParams;
    :cond_4d
    move v1, v3

    .line 108
    goto :goto_32

    .line 110
    :cond_4f
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->fixedSizeViews:Z

    if-eqz v1, :cond_63

    .line 112
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/youtube/videos/ui/MovieTableView;->DUMMY_LAYOUT_PARAMS:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_63
    iget v2, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->hSpacing:I

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_71

    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->vSpacing:I

    :goto_6d
    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_35

    :cond_71
    move v1, v3

    goto :goto_6d
.end method

.method private configureStretchableColumns()V
    .registers 4

    .prologue
    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/ui/MovieTableView;->setStretchAllColumns(Z)V

    .line 128
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->fixedSizeViews:Z

    if-eqz v1, :cond_1a

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    .line 130
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/videos/ui/MovieTableView;->setColumnStretchable(IZ)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 133
    .end local v0           #i:I
    :cond_1a
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->maxItems:I

    if-ge v0, v1, :cond_12

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MovieTableView;->addViewInternal(Landroid/view/View;)V

    .line 70
    :cond_12
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->removeAllViews()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    .line 62
    return-void
.end method

.method public getMaxItems()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->maxItems:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    return v0
.end method

.method public setNumColumns(I)V
    .registers 7
    .parameter "numColumns"

    .prologue
    .line 73
    iget v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    if-eq v4, p1, :cond_38

    .line 74
    iput p1, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->numColumns:I

    .line 75
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->currentRow:Landroid/widget/TableRow;

    .line 76
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->configureStretchableColumns()V

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1f

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 80
    .local v2, row:Landroid/widget/TableRow;
    invoke-virtual {v2}, Landroid/widget/TableRow;->removeAllViews()V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 82
    .end local v2           #row:Landroid/widget/TableRow;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MovieTableView;->removeAllViews()V

    .line 84
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MovieTableView;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 85
    .local v3, view:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/ui/MovieTableView;->addViewInternal(Landroid/view/View;)V

    goto :goto_28

    .line 88
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #view:Landroid/view/View;
    :cond_38
    return-void
.end method
