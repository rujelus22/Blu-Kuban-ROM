.class public Lcom/google/googlenav/suggest/android/SuggestView;
.super Lcom/google/googlenav/suggest/android/BaseSuggestView;
.source "SourceFile"


# instance fields
.field protected e:Z

.field protected f:Z

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/suggest/android/BaseSuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:I

    .line 47
    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/suggest/android/BaseSuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:I

    .line 47
    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestView;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/SuggestView;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:I

    return v0
.end method


# virtual methods
.method protected b()LS/g;
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->z()LS/g;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    new-instance v1, Lcom/google/googlenav/suggest/android/l;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/suggest/android/l;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method public enoughToFilter()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public f()V
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 125
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_13

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 133
    :cond_13
    return-void
.end method

.method public setEnoughToFilter(Z)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    .line 85
    return-void
.end method

.method public setFeatureTypeRestrict(I)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:I

    .line 141
    return-void
.end method

.method public setInputIndex(I)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:I

    .line 148
    return-void
.end method

.method public setSuggestEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    .line 78
    return-void
.end method

.method public showDropDown()V
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    if-eqz v0, :cond_18

    .line 92
    invoke-super {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->showDropDown()V

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    if-eqz v0, :cond_15

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 98
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    .line 100
    :cond_18
    return-void
.end method
