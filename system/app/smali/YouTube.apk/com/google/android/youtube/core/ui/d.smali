.class public abstract Lcom/google/android/youtube/core/ui/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/h;


# instance fields
.field protected final a:Landroid/view/ViewGroup;

.field protected final b:Landroid/view/ViewGroup;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/view/ViewGroup;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Landroid/widget/Button;

.field protected h:Landroid/view/View;

.field protected i:Lcom/google/android/youtube/core/a/a;

.field protected final j:Lcom/google/android/youtube/core/ui/j;

.field protected final k:Ljava/lang/String;

.field protected l:Lcom/google/android/youtube/core/ui/i;

.field protected m:Landroid/widget/AdapterView$OnItemClickListener;

.field protected n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final o:I

.field private p:Landroid/widget/FrameLayout;

.field private q:Lcom/google/android/youtube/core/ui/e;


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

    .line 64
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/google/android/youtube/b;->a:[I

    invoke-virtual {p2, p3, v0, v2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->k:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/d;->setOrientation(I)V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->p:Landroid/widget/FrameLayout;

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 73
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/d;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/youtube/core/ui/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 76
    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->p:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 81
    if-lez v5, :cond_d8

    move v0, v1

    :goto_43
    const-string v6, "no statusView provided"

    invoke-static {v0, v6}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/ui/g;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/youtube/core/ui/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->j:Lcom/google/android/youtube/core/ui/j;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->c:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    const-string v4, "error_message_view"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    if-nez v0, :cond_db

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->f:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->g:Landroid/widget/Button;

    .line 100
    :goto_9a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    .line 102
    const v0, 0x7fffffff

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/d;->o:I

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/d;->getPaddingLeft()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/d;->getPaddingTop()I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/d;->getPaddingRight()I

    move-result v4

    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/d;->getPaddingBottom()I

    move-result v5

    .line 108
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;IIII)V

    .line 109
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;IIII)V

    .line 110
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/android/youtube/core/ui/d;->setPadding(IIII)V

    .line 113
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    new-instance v0, Lcom/google/android/youtube/core/ui/e;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/ui/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->q:Lcom/google/android/youtube/core/ui/e;

    .line 116
    return-void

    :cond_d8
    move v0, v2

    .line 81
    goto/16 :goto_43

    .line 94
    :cond_db
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    const-string v1, "error_message"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->f:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    const-string v1, "retry_button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/d;->g:Landroid/widget/Button;

    goto :goto_9a
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2b

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    if-ne v0, p1, :cond_2d

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2f

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    if-ne v3, p1, :cond_31

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void

    :cond_2b
    move v0, v2

    .line 191
    goto :goto_a

    :cond_2d
    move v0, v2

    .line 192
    goto :goto_14

    :cond_2f
    move v0, v2

    .line 193
    goto :goto_1e

    :cond_31
    move v1, v2

    .line 194
    goto :goto_27
.end method

.method private static a(Landroid/view/View;IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
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

    .line 235
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 149
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 153
    return-void
.end method

.method public a(Lcom/google/android/youtube/core/a/a;)V
    .registers 4
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->i:Lcom/google/android/youtube/core/a/a;

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->i:Lcom/google/android/youtube/core/a/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/d;->q:Lcom/google/android/youtube/core/ui/e;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/ui/i;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->l:Lcom/google/android/youtube/core/ui/i;

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/ui/d;->addView(Landroid/view/View;I)V

    .line 128
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method protected final e()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/youtube/core/ui/d;->o:I

    return v0
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/d;->a(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public final i()Lcom/google/android/youtube/core/ui/j;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->j:Lcom/google/android/youtube/core/ui/j;

    return-object v0
.end method

.method public j()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 158
    return-void
.end method
