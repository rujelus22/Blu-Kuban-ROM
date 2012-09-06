.class public Lcom/twitter/android/widget/UserView;
.super Lcom/twitter/android/widget/CardRowView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Lcom/twitter/android/widget/an;

.field private d:J

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/UserView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/twitter/android/ec;->UserView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/UserView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UserView;->f:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/UserView;->g:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/api/PromotedContent;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    return-object v0
.end method

.method public final a(IIIII)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2, v2, p4, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_5
.end method

.method public final a(ILcom/twitter/android/widget/an;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput-object p2, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/an;

    goto :goto_4
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twitter/android/widget/UserView;->d:J

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/twitter/android/widget/UserView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public final a(Lcom/twitter/android/api/PromotedContent;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/android/api/PromotedContent;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/twitter/android/widget/UserView;->g:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_16
    return-void

    :cond_17
    iget v1, p0, Lcom/twitter/android/widget/UserView;->f:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_10

    :cond_1d
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public final a(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    sget v1, Lcom/twitter/android/dx;->btn_check:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_5
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public final b(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public final c(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Lcom/twitter/android/widget/CardRowView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    :cond_11
    return-void
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/an;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/widget/UserView;->c:Lcom/twitter/android/widget/an;

    iget-wide v1, p0, Lcom/twitter/android/widget/UserView;->d:J

    invoke-interface {v0, p0, v1, v2}, Lcom/twitter/android/widget/an;->a(Lcom/twitter/android/widget/UserView;J)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->toggle()V

    :cond_e
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/twitter/android/widget/CardRowView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/twitter/android/widget/UserView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/UserView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    sget v0, Lcom/twitter/android/dy;->action_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->h:Landroid/widget/ImageButton;

    sget v0, Lcom/twitter/android/dy;->screenname_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->i:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/dy;->protected_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->j:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/dy;->verified_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->k:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/dy;->name_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->l:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/dy;->user_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->m:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/dy;->extra_info:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->n:Landroid/widget/TextView;

    sget v0, Lcom/twitter/android/dy;->promoted:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserView;->o:Landroid/widget/TextView;

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/twitter/android/widget/UserView;->b:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserView;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserView;->b:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
