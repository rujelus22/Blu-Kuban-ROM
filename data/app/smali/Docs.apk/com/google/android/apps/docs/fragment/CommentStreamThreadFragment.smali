.class public Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "CommentStreamThreadFragment.java"

# interfaces
.implements Labh;


# instance fields
.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/os/Handler;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/google/android/apps/docs/view/SocialCommentView;

.field private a:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
            "<",
            "LdY;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Runnable;

.field private a:LkR;

.field private a:Lld;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lmz;

.field private a:Lna;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 108
    new-instance v0, LGN;

    invoke-direct {v0, p0}, LGN;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lld;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "discussionId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "discussionQuote"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v1}, Lld;->a(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method public static a(Lld;Lna;)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-interface {p1}, Lna;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lna;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lld;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private a(Lna;)Landroid/view/View;
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0xa

    const/16 v3, 0x8

    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, LcU;->comment_stream_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 262
    sget v0, LcS;->replies_bubble:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-interface {p1}, Lna;->a()Lna;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 266
    sget v0, LcS;->divider_top:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_2e
    invoke-interface {p1}, Lna;->a()LmY;

    move-result-object v0

    invoke-interface {v0}, LmY;->a()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 272
    sget v0, LcS;->contact_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 273
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    invoke-interface {p1}, Lna;->a()LmY;

    move-result-object v3

    invoke-interface {v3}, LmY;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Lmz;->a(Landroid/net/Uri;)Lmu;

    move-result-object v1

    .line 275
    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/os/Handler;

    new-instance v4, LGR;

    invoke-direct {v4, p0, v0, v1}, LGR;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Landroid/widget/ImageView;Lmu;)V

    invoke-interface {v1, v3, v4}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 288
    :cond_58
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Lna;->a()LmY;

    move-result-object v0

    invoke-interface {v0}, LmY;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v6, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lna;->a()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 295
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x777778

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v0, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    sget v0, LcS;->text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 300
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-interface {p1}, Lna;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 304
    invoke-interface {p1}, Lna;->a()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 305
    sget v0, LcY;->comment_resolved:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 310
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_e4

    .line 311
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e4
    move-object v1, v0

    .line 315
    :cond_e5
    sget v0, LcS;->content:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 321
    sget v0, LcS;->more_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LGS;

    invoke-direct {v1, p0, p1}, LGS;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Lna;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-object v2
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lfd;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)LkR;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lld;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lld;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lmz;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lna;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Lna;)Lna;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->p()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 454
    :goto_9
    return-void

    .line 439
    :cond_a
    invoke-static {p1}, LafZ;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    invoke-virtual {v0}, LkR;->c()Ljava/lang/String;

    move-result-object p1

    .line 441
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    :goto_1c
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 449
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-interface {v1, v2, v4, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    invoke-virtual {v1}, LkR;->a()LkU;

    move-result-object v1

    invoke-virtual {v1}, LkU;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_9

    .line 444
    :cond_4d
    const/4 v0, 0x2

    .line 445
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->q()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    return-object v0
.end method

.method private p()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-direct {p0, v3}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lna;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_34

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 369
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/Button;

    if-eqz v0, :cond_46

    .line 370
    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Z

    move-result v0

    if-nez v0, :cond_8d

    move v0, v1

    :goto_43
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 372
    :cond_46
    iget-object v3, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Z

    move-result v0

    if-eqz v0, :cond_8f

    sget v0, LcY;->comment_document_reply_reopen_hint:I

    :goto_52
    invoke-virtual {v3, v0}, Lcom/google/android/apps/docs/view/SocialCommentView;->setCommentHint(I)V

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/SocialCommentView;->setVisibility(I)V

    .line 377
    iget-boolean v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_98

    .line 378
    :cond_6b
    iput-boolean v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Z

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 380
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lna;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_77

    :cond_8d
    move v0, v2

    .line 370
    goto :goto_43

    .line 372
    :cond_8f
    sget v0, LcY;->comment_document_reply_hint:I

    goto :goto_52

    .line 382
    :cond_92
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 424
    :goto_97
    return-void

    .line 387
    :cond_98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_ac
    :goto_ac
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 390
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v7, :cond_c2

    .line 391
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 393
    :cond_c2
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v7, :cond_ac

    .line 397
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_ac

    .line 402
    :cond_cf
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 403
    iget-object v5, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lna;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d3

    .line 406
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, LcU;->comment_morebutton_row:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 407
    sget v0, LcS;->more_button:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 408
    sget v5, LcY;->button_showall:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v6}, Lna;->a()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v1, LGU;

    invoke-direct {v1, p0}, LGU;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 420
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lna;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12c

    .line 423
    :cond_142
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_97
.end method

.method private q()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0, v1}, Lmz;->a(Lna;)Lmu;

    move-result-object v1

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0, v1}, LdY;->a(Lmu;)V

    .line 480
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()Z

    move-result v1

    .line 152
    if-eqz v1, :cond_60

    sget v0, LcU;->commentsthread_tablet_fragment:I

    .line 154
    :goto_10
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 156
    sget v0, LcS;->comment_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/SocialCommentView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/apps/docs/view/SocialCommentView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/view/SocialCommentView;->setOnPostCommentListener(Labh;)V

    .line 160
    if-eqz v1, :cond_63

    .line 161
    sget v0, LcS;->button_resolve:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/Button;

    new-instance v1, LGO;

    invoke-direct {v1, p0}, LGO;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    sget v0, LcS;->button_close:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    new-instance v1, LGP;

    invoke-direct {v1, p0}, LGP;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :goto_4f
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 199
    return-object v2

    .line 152
    :cond_60
    sget v0, LcU;->commentsthread_fragment:I

    goto :goto_10

    .line 180
    :cond_63
    sget v0, LcS;->comment_context:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    new-instance v1, LGQ;

    invoke-direct {v1, p0}, LGQ;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, LcS;->comment_header_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/TextView;

    .line 193
    sget v0, LcS;->doc_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Landroid/widget/ImageView;

    goto :goto_4f
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 487
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_21

    .line 488
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 495
    :goto_1b
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 496
    :goto_20
    return-object v0

    .line 489
    :cond_21
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_34

    .line 490
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1b

    .line 492
    :cond_34
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public a()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->scroll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 467
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lcom/google/android/apps/docs/view/SocialCommentView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/SocialCommentView;->computeScroll()V

    .line 468
    new-instance v1, LGV;

    invoke-direct {v1, p0}, LGV;-><init>(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/os/Bundle;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Z

    .line 143
    new-instance v0, Lfd;

    const-class v1, LdY;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LanD;

    invoke-direct {v0, v1, v2}, Lfd;-><init>(Ljava/lang/Class;LanD;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->e(Z)V

    .line 146
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/view/Menu;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()Z

    move-result v0

    if-nez v0, :cond_27

    .line 244
    sget v0, LcS;->menu_resolve:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-interface {v0}, Lna;->a()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_24
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 247
    :cond_27
    return-void

    .line 245
    :cond_28
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0}, LdY;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 235
    sget v0, LcV;->menu_commentthread_activity:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Landroid/view/Menu;)V

    .line 238
    :cond_19
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lna;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmz;->a(Lna;Ljava/lang/String;)Lmu;

    move-result-object v1

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdY;

    invoke-interface {v0, v1}, LdY;->a(Lmu;)V

    .line 461
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, LcS;->menu_resolve:I

    if-ne v0, v1, :cond_16

    .line 253
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->q()V

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_15
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lld;->a(Landroid/os/Bundle;)Lld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lld;

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lld;

    iget-object v1, v1, Lld;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lld;

    iget-object v2, v2, Lld;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    if-nez v0, :cond_2f

    .line 209
    const-string v0, "CommentStreamThreadFragment"

    const-string v1, "Document is null"

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_2e
    return-void

    .line 213
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmw;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    invoke-virtual {v1}, LkR;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:LkR;

    invoke-virtual {v2}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmw;->a(Ljava/lang/String;Ljava/lang/String;)Lmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "discussionQuote"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public f()V
    .registers 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->a(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->g()V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Lmz;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lmz;->b(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method
