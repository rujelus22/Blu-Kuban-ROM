.class public Lcom/google/googlenav/ui/android/EditableTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected final a:Landroid/text/SpannableStringBuilder;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/google/googlenav/ui/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bl;IZ)I
    .registers 13

    const v8, 0x7f030059

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;IZ)I

    move-result v1

    :goto_10
    return v1

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p3, :cond_e9

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_e9

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v3, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    move-object v0, p0

    move v4, v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/bg;ILbb/c;Lbb/E;)Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_48
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v4, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    sget-object v6, Lcom/google/googlenav/ui/bg;->v:Lcom/google/googlenav/ui/bg;

    if-ne v4, v6, :cond_6f

    iget-object v4, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_53

    :cond_6f
    iget-object v4, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_53

    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_a3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v8, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget v2, p1, Lcom/google/googlenav/ui/bl;->B:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_10

    :cond_e9
    move v1, v2

    goto/16 :goto_48
.end method

.method public a(Lcom/google/googlenav/ui/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/p;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->i()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
