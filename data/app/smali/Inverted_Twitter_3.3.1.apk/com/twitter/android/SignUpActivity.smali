.class public Lcom/twitter/android/SignUpActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Lcom/twitter/android/widget/PopupEditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Ljava/lang/String;

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/lang/String;

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Lcom/twitter/android/et;

.field private t:I

.field private u:I

.field private v:Landroid/widget/Button;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Lcom/twitter/android/eu;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    new-instance v0, Lcom/twitter/android/eu;

    invoke-direct {v0, p0}, Lcom/twitter/android/eu;-><init>(Lcom/twitter/android/SignUpActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/TextView;I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, p3, :cond_10

    const/4 v0, 0x2

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v2, 0x1

    if-le p3, v2, :cond_f

    if-ge v1, p3, :cond_f

    const/4 v0, 0x3

    goto :goto_f
.end method

.method private static a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z
    .registers 4

    if-nez p0, :cond_10

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method final a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5

    if-eqz p3, :cond_f

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->t:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/twitter/android/SignUpActivity;->u:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method final a(Landroid/widget/EditText;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    move-object v0, v1

    :goto_8
    if-eqz p2, :cond_14

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_f
    return-void

    :cond_10
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_8

    :cond_14
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_f
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SignUpActivity;->o:I

    :goto_19
    if-ne v2, v1, :cond_74

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    invoke-virtual {v1, v0}, Lcom/twitter/android/eu;->a(I)V

    :goto_20
    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->c()V

    return-void

    :cond_24
    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SignUpActivity;->p:I

    move v2, v0

    move v0, v1

    goto :goto_19

    :cond_3d
    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v3}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :goto_54
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SignUpActivity;->q:I

    move v4, v2

    move v2, v0

    move v0, v4

    goto :goto_19

    :cond_62
    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->b()V

    goto :goto_54

    :cond_68
    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/SignUpActivity;->r:I

    const/4 v0, 0x4

    goto :goto_19

    :cond_74
    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    invoke-virtual {v1, v0}, Lcom/twitter/android/eu;->removeMessages(I)V

    goto :goto_20
.end method

.method final b()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->length()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method final c()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->v:Landroid/widget/Button;

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->o:I

    if-ne v2, v0, :cond_17

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->p:I

    if-ne v2, v0, :cond_17

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->q:I

    if-ne v2, v0, :cond_17

    iget v2, p0, Lcom/twitter/android/SignUpActivity;->r:I

    if-ne v2, v0, :cond_17

    :goto_13
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final d()V
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v2}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/SignUpActivity;->n:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method final e()V
    .registers 3

    const v0, 0x7f0b0133

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method final f()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    :goto_7
    return-void

    :sswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->d()V

    goto :goto_7

    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProxySettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    nop

    :sswitch_data_18
    .sparse-switch
        0x7f070064 -> :sswitch_c
        0x7f070093 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const v0, 0x7f030041

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/twitter/android/SignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/SignUpActivity;->w:Landroid/graphics/drawable/Drawable;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SignUpActivity;->u:I

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SignUpActivity;->t:I

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PopupEditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    new-instance v0, Lcom/twitter/android/et;

    invoke-direct {v0}, Lcom/twitter/android/et;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/et;

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/et;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PopupEditText;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PopupEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/PopupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/twitter/android/es;

    invoke-direct {v0, p0}, Lcom/twitter/android/es;-><init>(Lcom/twitter/android/SignUpActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SignUpActivity;->b:Lcom/twitter/android/client/g;

    if-nez p1, :cond_f7

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->af:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_f7
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_58

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0130

    invoke-virtual {p0, v1}, Lcom/twitter/android/SignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_8

    :pswitch_23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/eq;

    invoke-direct {v1, p0}, Lcom/twitter/android/eq;-><init>(Lcom/twitter/android/SignUpActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0121

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00d5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_8

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_9
        :pswitch_23
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8

    const v4, 0x7f0b019f

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_9e

    :cond_b
    :goto_b
    return-void

    :sswitch_c
    if-nez p2, :cond_b

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_b

    :cond_31
    iget v0, p0, Lcom/twitter/android/SignUpActivity;->p:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/eu;->b(I)V

    goto :goto_b

    :sswitch_3c
    if-eqz p2, :cond_4c

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->length()I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    goto :goto_b

    :cond_4c
    if-nez p2, :cond_b

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f0b01a0

    invoke-virtual {p0, v2}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_b

    :cond_69
    iget v0, p0, Lcom/twitter/android/SignUpActivity;->q:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    invoke-virtual {v0, v3}, Lcom/twitter/android/eu;->b(I)V

    goto :goto_b

    :sswitch_73
    if-nez p2, :cond_b

    iget v0, p0, Lcom/twitter/android/SignUpActivity;->r:I

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(ILandroid/widget/EditText;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    const v2, 0x7f0b01a1

    invoke-virtual {p0, v2}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_91
    iget v0, p0, Lcom/twitter/android/SignUpActivity;->r:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/twitter/android/SignUpActivity;->x:Lcom/twitter/android/eu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/android/eu;->b(I)V

    goto/16 :goto_b

    nop

    :sswitch_data_9e
    .sparse-switch
        0x7f070025 -> :sswitch_3c
        0x7f07008e -> :sswitch_c
        0x7f070091 -> :sswitch_73
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_26

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :goto_6
    return-void

    :pswitch_7
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f070040

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/SignUpActivity;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f070041

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
