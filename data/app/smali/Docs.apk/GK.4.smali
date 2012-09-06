.class public LGK;
.super Landroid/widget/ArrayAdapter;
.source "CommentStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lna;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    .line 77
    sget v0, LcU;->comment_stream_row:I

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const v9, -0x777778

    const/16 v8, 0x21

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    if-nez p2, :cond_1c

    .line 83
    iget-object v0, p0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, LcU;->comment_stream_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_1c
    sget v0, LcS;->content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget v0, LcS;->more_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {p0, p1}, LGK;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 92
    invoke-interface {v0}, Lna;->a()LmY;

    move-result-object v1

    invoke-interface {v1}, LmY;->a()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 93
    sget v1, LcS;->contact_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v2}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Lmz;

    move-result-object v2

    invoke-interface {v0}, Lna;->a()LmY;

    move-result-object v3

    invoke-interface {v3}, LmY;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lmz;->a(Landroid/net/Uri;)Lmu;

    move-result-object v2

    .line 96
    iget-object v3, p0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    iget-object v3, v3, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a:Landroid/os/Handler;

    new-instance v4, LGL;

    invoke-direct {v4, p0, v1, v2}, LGL;-><init>(LGK;Landroid/widget/ImageView;Lmu;)V

    invoke-interface {v2, v3, v4}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 110
    :cond_64
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 111
    invoke-interface {v0}, Lna;->a()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 112
    iget-object v2, p0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    sget v3, LcY;->comment_resolved_username:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Lna;->a()LmY;

    move-result-object v5

    invoke-interface {v5}, LmY;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    :goto_92
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 125
    invoke-virtual {p0}, LGK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0}, Lna;->a()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-interface {v0}, Lna;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 131
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 132
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v3, " \u2026 "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    sget v1, LcS;->text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    new-instance v2, LGM;

    invoke-direct {v2, p0, p1}, LGM;-><init>(LGK;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 146
    sget v1, LcS;->replies_bubble:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/docs/view/RepliesBubbleView;

    .line 147
    invoke-interface {v0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/RepliesBubbleView;->setCount(I)V

    .line 149
    return-object p2

    .line 118
    :cond_115
    invoke-interface {v0}, Lna;->a()LmY;

    move-result-object v2

    invoke-interface {v2}, LmY;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_92
.end method
