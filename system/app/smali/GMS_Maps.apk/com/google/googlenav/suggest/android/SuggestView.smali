.class public Lcom/google/googlenav/suggest/android/SuggestView;
.super Landroid/widget/AutoCompleteTextView;


# instance fields
.field protected a:Z

.field private final b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Landroid/view/inputmethod/InputMethodManager;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Lcom/google/googlenav/suggest/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/e;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/f;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/g;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Lcom/google/googlenav/suggest/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/e;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/f;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/g;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/SuggestView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .registers 11

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->e()V

    new-instance v0, Lcom/google/googlenav/suggest/android/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/h;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/i;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/j;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->I()Lah/g;

    move-result-object v5

    invoke-interface {v5}, Lah/g;->a()Ljava/lang/String;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_68

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {v5, v0}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-le v0, v4, :cond_53

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :cond_53
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, v3, :cond_5d

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2, v2, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v9, v9, v0, v9}, Lcom/google/googlenav/suggest/android/SuggestView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_8
    iget-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_22

    const/16 v0, 0xff

    :goto_e
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_8

    :cond_22
    move v0, v1

    goto :goto_e
.end method

.method static synthetic d(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2d

    new-array v4, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v4, v5

    :goto_19
    const-string v5, ""

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/suggest/android/k;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/google/googlenav/suggest/android/k;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;Lcom/google/googlenav/suggest/android/e;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2d
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v4, v5

    const-string v3, "return_immediately"

    aput-object v3, v4, v6

    goto :goto_19
.end method

.method static synthetic f(Lcom/google/googlenav/suggest/android/SuggestView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/google/googlenav/suggest/android/SuggestView;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_13
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    goto :goto_d

    :cond_19
    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    goto :goto_d
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    return-void
.end method

.method public enoughToFilter()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

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

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/k;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/k;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDropDown()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    if-eqz v0, :cond_18

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    :cond_18
    return-void
.end method
