.class public abstract Lcom/google/googlenav/suggest/android/BaseSuggestView;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/graphics/drawable/AnimationDrawable;

.field protected b:Z

.field protected final c:Landroid/view/inputmethod/InputMethodManager;

.field protected final d:Ljava/lang/Runnable;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    .line 67
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    new-instance v0, Lcom/google/googlenav/suggest/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/c;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->d:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/google/googlenav/suggest/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/d;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->g:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/google/googlenav/suggest/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/e;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->h:Ljava/lang/Runnable;

    .line 103
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    .line 67
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    new-instance v0, Lcom/google/googlenav/suggest/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/c;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->d:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/google/googlenav/suggest/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/d;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->g:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/google/googlenav/suggest/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/e;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->h:Ljava/lang/Runnable;

    .line 108
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a()V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/BaseSuggestView;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/BaseSuggestView;Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/BaseSuggestView;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->g:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->d()V

    .line 120
    new-instance v0, Lcom/google/googlenav/suggest/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/f;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    new-instance v0, Lcom/google/googlenav/suggest/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/g;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    new-instance v0, Lcom/google/googlenav/suggest/android/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/h;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b()LS/g;

    move-result-object v5

    .line 180
    invoke-interface {v5}, LS/g;->a()Ljava/lang/String;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 185
    :goto_28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 186
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {v5, v0}, LS/g;->e(C)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 187
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 188
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-le v0, v4, :cond_4f

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 189
    :cond_4f
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, v3, :cond_59

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 190
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 192
    :cond_64
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2, v2, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v9, v9, v0, v9}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Z)V

    .line 203
    return-void
.end method

.method protected final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p1, :cond_1c

    .line 223
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 227
    :goto_8
    iget-object v2, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_22

    const/16 v0, 0xff

    :goto_e
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 228
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    .line 230
    return-void

    .line 225
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_8

    :cond_22
    move v0, v1

    .line 227
    goto :goto_e
.end method

.method protected abstract b()LS/g;
.end method

.method protected final c()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->c:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 213
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 242
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_c

    .line 247
    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b
.end method

.method protected abstract d()V
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->e:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 293
    :goto_d
    return-object v0

    .line 288
    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 289
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->e:Ljava/lang/String;

    goto :goto_d

    .line 291
    :cond_19
    iput-object v2, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->f:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->e:Ljava/lang/String;

    goto :goto_d
.end method

.method public onFilterComplete(I)V
    .registers 4
    .parameter

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 318
    :cond_8
    :goto_8
    return-void

    .line 311
    :cond_9
    if-lez p1, :cond_21

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 312
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->showDropDown()V

    goto :goto_8

    .line 315
    :cond_21
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->dismissDropDown()V

    goto :goto_8
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_b

    .line 270
    iput-object v1, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->e:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->f:Ljava/lang/String;

    .line 273
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 274
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/i;

    .line 255
    if-eqz v0, :cond_1b

    .line 256
    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/i;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1b

    .line 258
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->e:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/i;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->f:Ljava/lang/String;

    .line 262
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method
