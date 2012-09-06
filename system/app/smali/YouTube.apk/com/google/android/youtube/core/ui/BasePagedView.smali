.class public abstract Lcom/google/android/youtube/core/ui/BasePagedView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/g;


# instance fields
.field protected final a:Landroid/view/ViewGroup;

.field protected final b:Landroid/view/ViewGroup;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/view/ViewGroup;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Landroid/widget/Button;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/ListAdapter;

.field protected final j:Lcom/google/android/youtube/core/ui/i;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/google/android/youtube/core/ui/h;

.field protected m:Landroid/widget/AdapterView$OnItemClickListener;

.field protected n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final o:Ljava/util/List;

.field private final p:Z

.field private q:Z

.field private final r:I

.field private final s:I

.field private t:Landroid/widget/FrameLayout;

.field private u:Lcom/google/android/youtube/core/ui/d;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    .line 77
    sget-object v0, Lcom/google/android/youtube/b;->a:[I

    invoke-virtual {p2, p3, v0, v2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOrientation(I)V

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    .line 82
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 92
    if-lez v5, :cond_ef

    move v0, v1

    :goto_51
    const-string v6, "no statusView provided"

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/ui/f;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/youtube/core/ui/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->j:Lcom/google/android/youtube/core/ui/i;

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    const-string v4, "error_message_view"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    if-nez v0, :cond_f2

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    .line 110
    :goto_a8
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    .line 112
    const v0, 0x7fffffff

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->r:I

    .line 113
    const v0, 0x7fffffff

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->s:I

    .line 115
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingLeft()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingTop()I

    move-result v1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingRight()I

    move-result v4

    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingBottom()I

    move-result v5

    .line 119
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 120
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 121
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 122
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/android/youtube/core/ui/BasePagedView;->setPadding(IIII)V

    .line 124
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    new-instance v0, Lcom/google/android/youtube/core/ui/d;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/ui/d;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->u:Lcom/google/android/youtube/core/ui/d;

    .line 127
    return-void

    :cond_ef
    move v0, v2

    .line 92
    goto/16 :goto_51

    .line 105
    :cond_f2
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    const-string v4, "error_message"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    const-string v4, "retry_button"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    goto :goto_a8
.end method

.method private static a(Landroid/view/View;IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 308
    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 227
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2b

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    if-ne v0, p1, :cond_2d

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2f

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    if-ne v3, p1, :cond_31

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    return-void

    :cond_2b
    move v0, v2

    .line 227
    goto :goto_a

    :cond_2d
    move v0, v2

    .line 228
    goto :goto_14

    :cond_2f
    move v0, v2

    .line 229
    goto :goto_1e

    :cond_31
    move v1, v2

    .line 230
    goto :goto_27
.end method

.method private k()V
    .registers 7

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    if-nez v0, :cond_9

    .line 247
    :cond_8
    :goto_8
    return-void

    .line 241
    :cond_9
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 243
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->c(Landroid/view/View;)V

    .line 244
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    goto :goto_11

    .line 246
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    goto :goto_8
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 204
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    if-nez v0, :cond_e

    .line 205
    :cond_d
    :goto_d
    return-void

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->b(Landroid/view/View;)V

    goto :goto_14

    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    goto :goto_d
.end method

.method public final a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "header view doesn\'t specify any layout params, did you inflate with a null parent?"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    if-nez v0, :cond_2b

    .line 154
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :goto_2a
    return-void

    .line 156
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->b(Landroid/view/View;)V

    goto :goto_2a
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->k()V

    .line 200
    return-void
.end method

.method protected final b()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 211
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->k()V

    .line 212
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->r:I

    return v0
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 218
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->k()V

    .line 219
    return-void
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->s:I

    return v0
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 193
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->k()V

    .line 194
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d(Landroid/view/View;)V

    .line 223
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->k()V

    .line 224
    return-void
.end method

.method protected abstract g()Z
.end method

.method public final h()Lcom/google/android/youtube/core/ui/i;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->j:Lcom/google/android/youtube/core/ui/i;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    return-object v0
.end method

.method public j()V
    .registers 1

    .prologue
    .line 312
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->u:Lcom/google/android/youtube/core/ui/d;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 163
    return-void
.end method

.method public setEmptyText(I)V
    .registers 3
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 179
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 183
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 188
    return-void
.end method

.method public final setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method public final setOnScrollListener(Lcom/google/android/youtube/core/ui/h;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->l:Lcom/google/android/youtube/core/ui/h;

    .line 171
    return-void
.end method
