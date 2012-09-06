.class public Lcom/google/googlenav/ui/android/EditableTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected final a:Landroid/text/SpannableStringBuilder;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/google/googlenav/ui/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    .line 62
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bd;IZ)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f040069

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-nez v0, :cond_11

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;IZ)I

    move-result v1

    .line 130
    :goto_10
    return v1

    .line 83
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 85
    if-eqz p3, :cond_e9

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_e9

    .line 89
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 90
    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    iget-object v3, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    move-object v0, p0

    move v4, v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/aV;ILcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Landroid/widget/TextView;

    .line 93
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 95
    iget-object v3, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 96
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    .line 99
    :goto_48
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 102
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 103
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v6, Lcom/google/googlenav/ui/aV;->s:Lcom/google/googlenav/ui/aV;

    if-ne v4, v6, :cond_6f

    .line 104
    iget-object v4, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_53

    .line 106
    :cond_6f
    iget-object v4, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_53

    .line 110
    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 117
    :cond_a3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v8, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget v2, p1, Lcom/google/googlenav/ui/bd;->B:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_10

    :cond_e9
    move v1, v2

    goto/16 :goto_48
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->h()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bd;->j()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    return-void
.end method

.method public setDialogActionHandler(Lcom/google/googlenav/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/g;

    .line 138
    return-void
.end method
