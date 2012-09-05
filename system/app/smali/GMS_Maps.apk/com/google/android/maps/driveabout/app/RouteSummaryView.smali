.class public Lcom/google/android/maps/driveabout/app/RouteSummaryView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/dA;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/dA;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030041

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f0108

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0f0109

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    const v0, 0x7f0f010a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f010b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    const v0, 0x7f0f010c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    const v0, 0x7f0f010d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    const v0, 0x7f0f010e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    const v0, 0x7f0f010f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    return-void
.end method

.method private b(Lu/x;)Ljava/util/ArrayList;
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v0

    if-ne v0, v5, :cond_55

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00cc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Lu/x;->F()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00d8

    const/4 v3, 0x1

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-virtual {p1}, Lu/x;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/N;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lu/N;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_55
    invoke-virtual {p1}, Lu/x;->d()I

    move-result v0

    if-ne v0, v6, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00cd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_6a
    invoke-virtual {p1}, Lu/x;->D()[Lu/b;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lu/c;->a([Lu/b;I)Z

    move-result v0

    invoke-virtual {p1}, Lu/x;->E()Z

    move-result v2

    if-eqz v2, :cond_9d

    if-eqz v0, :cond_80

    const-string v0, "!"

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    :cond_80
    :goto_80
    invoke-virtual {p1}, Lu/x;->D()[Lu/b;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lu/c;->a([Lu/b;I)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00d5

    const v3, 0x7f0200a7

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    return-object v1

    :cond_9d
    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00d4

    const v3, 0x7f0200a8

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "!"

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    goto :goto_80
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_132

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b00c7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/dA;

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v3

    invoke-virtual {p1}, Lu/x;->o()I

    move-result v4

    invoke-virtual {p1}, Lu/x;->q()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(III)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lu/x;->m()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lu/P;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_51
    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lu/P;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12e

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa0

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_7f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_84
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b(Lu/x;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_98
    return-void

    :pswitch_99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b00c8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    :pswitch_b3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b00c9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    :cond_cd
    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    if-eqz v1, :cond_f0

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu/Q;->a()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_f0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    :cond_f0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_51

    :cond_f7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    :cond_fd
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v1, v2

    :goto_10d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_127

    if-lez v1, :cond_11a

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_11a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10d

    :cond_127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_98

    :cond_12e
    move-object v0, v1

    goto/16 :goto_7f

    nop

    :pswitch_data_132
    .packed-switch 0x2
        :pswitch_99
        :pswitch_b3
    .end packed-switch
.end method
