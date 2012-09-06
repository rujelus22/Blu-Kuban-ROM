.class public Lcom/google/android/maps/driveabout/app/RouteSummaryView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/dp;

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
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Lo/x;)Ljava/util/ArrayList;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p1}, Lo/x;->d()I

    move-result v0

    if-ne v0, v5, :cond_55

    .line 152
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00d9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Lo/x;->F()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 159
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00e4

    const/4 v3, 0x1

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_31
    invoke-virtual {p1}, Lo/x;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/N;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lo/N;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 153
    :cond_55
    invoke-virtual {p1}, Lo/x;->d()I

    move-result v0

    if-ne v0, v6, :cond_1c

    .line 154
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00da

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 169
    :cond_6a
    invoke-virtual {p1}, Lo/x;->D()[Lo/b;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lo/c;->a([Lo/b;I)Z

    move-result v0

    .line 171
    invoke-virtual {p1}, Lo/x;->E()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 172
    if-eqz v0, :cond_80

    .line 174
    const-string v0, "!"

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 185
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lo/x;->D()[Lo/b;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lo/c;->a([Lo/b;I)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_9c

    .line 188
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00e1

    const v3, 0x7f0200d4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_9c
    return-object v1

    .line 177
    :cond_9d
    if-eqz v0, :cond_80

    .line 178
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00e0

    const v3, 0x7f0200d5

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v0, "!"

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    goto :goto_80
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/dp;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    const v1, 0x7f04004b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f100134

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f100135

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100136

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    .line 71
    const v0, 0x7f100138

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    .line 72
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    .line 73
    return-void
.end method


# virtual methods
.method public setRoute(Lo/x;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lo/x;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_132

    .line 92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d00d5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/dp;

    invoke-virtual {p1}, Lo/x;->p()I

    move-result v3

    invoke-virtual {p1}, Lo/x;->o()I

    move-result v4

    invoke-virtual {p1}, Lo/x;->q()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(III)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1}, Lo/x;->m()Lo/P;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lo/P;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 102
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lo/P;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_51
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    if-eqz v1, :cond_f7

    .line 113
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    invoke-virtual {v1}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Lo/P;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12e

    .line 118
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa0

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    :goto_7f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_84
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Lo/x;)Ljava/util/ArrayList;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_fd

    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_98
    return-void

    .line 84
    :pswitch_99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d00d6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 88
    :pswitch_b3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d00d7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 104
    :cond_cd
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    if-eqz v1, :cond_f0

    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    invoke-virtual {v1}, Lo/Q;->a()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_f0

    .line 107
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    .line 109
    :cond_f0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_51

    .line 125
    :cond_f7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 133
    :cond_fd
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v1, v2

    .line 136
    :goto_10d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_127

    .line 137
    if-lez v1, :cond_11a

    .line 138
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 140
    :cond_11a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10d

    .line 142
    :cond_127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_98

    :cond_12e
    move-object v0, v1

    goto/16 :goto_7f

    .line 82
    nop

    :pswitch_data_132
    .packed-switch 0x2
        :pswitch_99
        :pswitch_b3
    .end packed-switch
.end method

.method public setRouteOverviewButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method
