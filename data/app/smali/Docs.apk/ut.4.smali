.class public Lut;
.super Landroid/widget/ArrayAdapter;
.source "AllDiscussionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/List",
        "<",
        "Lna;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final a:Landroid/text/SpannableStringBuilder;

.field private a:Landroid/view/View;

.field private final a:Landroid/widget/AdapterView$OnItemClickListener;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation
.end field

.field private a:LzF;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    sget v0, Luq;->discussion_list_element_all_discussions:I

    sget v1, Lup;->comment_container_collapsed_text:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 35
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lut;->a:LzF;

    .line 60
    iput-object p1, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    .line 61
    iput-object p2, p0, Lut;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 62
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 145
    sget v0, Lup;->discussion_all_discussion_single_discussion_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lut;->a:Landroid/view/View;

    .line 147
    sget v0, Lup;->discussion_is_resolved:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lut;->a:Landroid/widget/TextView;

    .line 148
    sget v0, Lup;->comment_container_first:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lut;->b:Landroid/view/View;

    .line 149
    sget v0, Lup;->comment_container_collapsed_replies:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lut;->c:Landroid/view/View;

    .line 151
    sget v0, Lup;->comment_container_collapsed_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lut;->b:Landroid/widget/TextView;

    .line 153
    sget v0, Lup;->comment_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lut;->d:Landroid/view/View;

    .line 154
    sget v0, Lup;->comment_container_last:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lut;->e:Landroid/view/View;

    .line 156
    invoke-virtual {p0, p2}, Lut;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lut;->a:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lut;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lut;->a:I

    .line 158
    return-void
.end method

.method private b()Z
    .registers 7

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lut;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    invoke-static {v0}, LmO;->a(Lna;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 167
    const/4 v0, 0x1

    .line 168
    iget-object v1, p0, Lut;->a:Landroid/view/View;

    iget-object v2, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Luo;->discussion_all_discussions_discussion_resolved_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lut;->c:Landroid/view/View;

    iget-object v2, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Luo;->discussion_all_discussions_collapsed_replies_resolved_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :goto_36
    iget-object v1, p0, Lut;->a:Landroid/view/View;

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    return v0

    .line 174
    :cond_3c
    iget-object v0, p0, Lut;->a:Landroid/view/View;

    iget-object v2, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Luo;->discussion_all_discussions_discussion_open_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lut;->c:Landroid/view/View;

    iget-object v2, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Luo;->discussion_all_discussions_collapsed_replies_open_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_36
.end method


# virtual methods
.method public a(LzF;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lut;->a:LzF;

    .line 66
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lut;->a:LzF;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 74
    if-nez p2, :cond_1a

    .line 75
    const-string v0, "AllDiscussionsAdapter"

    const-string v1, "Discussion View is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Luq;->discussion_list_element_all_discussions:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_1a
    invoke-direct {p0, p2, p1}, Lut;->a(Landroid/view/View;I)V

    .line 82
    iget-object v0, p0, Lut;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {v0, p1}, LuG;->a(Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 85
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lut;->b()Z

    move-result v7

    .line 90
    iget-object v0, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lut;->a:LzF;

    iget-object v2, p0, Lut;->b:Landroid/view/View;

    iget-object v5, p0, Lut;->a:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lna;

    invoke-static/range {v0 .. v6}, LuG;->a(Landroid/support/v4/app/FragmentActivity;LzF;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lna;Z)V

    .line 92
    iget-object v0, p0, Lut;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget v0, p0, Lut;->a:I

    if-le v0, v6, :cond_f3

    .line 96
    if-eqz v7, :cond_a3

    .line 98
    iget-object v0, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 99
    iget-object v0, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lut;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus;->discussion_resolved:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    iget-object v0, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v2, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 102
    iget-object v0, p0, Lut;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lut;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lut;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lut;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lut;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus;->discussion_collapsed_replies:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lut;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lut;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lut;->d:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lut;->e:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_a2
    return-object p2

    .line 111
    :cond_a3
    iget-object v0, p0, Lut;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget v0, p0, Lut;->a:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_ed

    .line 114
    iget-object v0, p0, Lut;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lut;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus;->discussion_collapsed_replies:I

    new-array v5, v6, [Ljava/lang/Object;

    iget v7, p0, Lut;->a:I

    add-int/lit8 v7, v7, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lut;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_cd
    iget-object v0, p0, Lut;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lut;->a:LzF;

    iget-object v2, p0, Lut;->e:Landroid/view/View;

    iget-object v5, p0, Lut;->a:Ljava/util/List;

    iget v7, p0, Lut;->a:I

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lna;

    invoke-static/range {v0 .. v6}, LuG;->a(Landroid/support/v4/app/FragmentActivity;LzF;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lna;Z)V

    .line 124
    iget-object v0, p0, Lut;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lut;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a2

    .line 119
    :cond_ed
    iget-object v0, p0, Lut;->c:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cd

    .line 130
    :cond_f3
    iget-object v0, p0, Lut;->d:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lut;->c:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lut;->e:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2
.end method
