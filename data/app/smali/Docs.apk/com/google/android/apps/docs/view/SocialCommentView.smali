.class public Lcom/google/android/apps/docs/view/SocialCommentView;
.super Landroid/widget/FrameLayout;
.source "SocialCommentView.java"


# instance fields
.field private a:I

.field private a:Labh;

.field private final a:Landroid/view/View;

.field private a:Landroid/widget/AbsListView;

.field private final a:Landroid/widget/Button;

.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/view/View;

.field private final b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:I

    .line 69
    sget v0, LcU;->comment_view:I

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, LcS;->button_comment:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/Button;

    .line 72
    sget v0, LcS;->button_cancel:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->b:Landroid/widget/Button;

    .line 73
    sget v0, LcS;->button_close:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->b:Landroid/view/View;

    .line 74
    sget v0, LcS;->post_comment_buttons:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/view/View;

    .line 75
    sget v0, LcS;->post_comment:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:I

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    new-instance v1, Labd;

    invoke-direct {v1, p0}, Labd;-><init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    new-instance v1, Labe;

    invoke-direct {v1, p0}, Labe;-><init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->b:Landroid/widget/Button;

    new-instance v1, Labf;

    invoke-direct {v1, p0}, Labf;-><init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/Button;

    new-instance v1, Labg;

    invoke-direct {v1, p0}, Labg;-><init>(Lcom/google/android/apps/docs/view/SocialCommentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/AbsListView;

    .line 59
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)I
    .registers 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)Labh;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Labh;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/AbsListView;

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 191
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 194
    :cond_16
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/view/SocialCommentView;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->a()V

    return-void
.end method


# virtual methods
.method public setCloseButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->b:Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void

    .line 165
    :cond_e
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setCommentHint(I)V
    .registers 3
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 150
    return-void
.end method

.method public setOnPostCommentListener(Labh;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SocialCommentView;->a:Labh;

    .line 158
    return-void
.end method
