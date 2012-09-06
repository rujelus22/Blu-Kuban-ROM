.class public LuG;
.super Ljava/lang/Object;
.source "DiscussionFragmentUtils.java"


# static fields
.field private static final a:Landroid/text/SpannableStringBuilder;

.field private static a:Landroid/view/View$OnClickListener;

.field private static a:Landroid/view/View$OnLongClickListener;

.field private static a:Landroid/widget/ImageView;

.field private static a:Landroid/widget/TextView;

.field private static b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, LuH;

    invoke-direct {v0, p0, p1}, LuH;-><init>(Landroid/widget/AdapterView$OnItemClickListener;I)V

    return-object v0
.end method

.method public static a(ZZII)Landroid/view/animation/Animation;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    if-eqz p1, :cond_18

    .line 52
    if-eqz p0, :cond_11

    .line 53
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 65
    :goto_b
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 66
    return-object v0

    .line 55
    :cond_11
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b

    .line 59
    :cond_18
    if-eqz p0, :cond_21

    .line 60
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p3

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b

    .line 62
    :cond_21
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p3

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b
.end method

.method private static a(Landroid/support/v4/app/FragmentActivity;Lna;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x21

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 144
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 146
    invoke-interface {p1}, Lna;->a()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 148
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus;->discussion_marked_as_resolved:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v2, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    :cond_30
    :goto_30
    invoke-interface {p1}, Lna;->c()Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_bc

    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_bc

    .line 160
    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 161
    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    :cond_54
    :goto_54
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le v0, v6, :cond_70

    if-eqz p2, :cond_70

    .line 168
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 169
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    const-string v1, " \u2026 "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 171
    :cond_70
    sget-object v0, LuG;->b:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget-object v0, LuG;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 174
    sget-object v0, LuG;->b:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget-object v0, LuG;->b:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    sget-object v0, LuG;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 177
    return-void

    .line 151
    :cond_95
    invoke-interface {p1}, Lna;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 153
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus;->discussion_re_opened:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    sget-object v2, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_30

    .line 162
    :cond_bc
    if-eqz v0, :cond_54

    .line 164
    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_54
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;LzF;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lna;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    sput-object p3, LuG;->a:Landroid/view/View$OnClickListener;

    .line 91
    sput-object p4, LuG;->a:Landroid/view/View$OnLongClickListener;

    .line 93
    sget v0, Lup;->contact_picture:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, LuG;->a:Landroid/widget/ImageView;

    .line 94
    sget v0, Lup;->comment_author_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, LuG;->a:Landroid/widget/TextView;

    .line 95
    sget v0, Lup;->comment_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, LuG;->b:Landroid/widget/TextView;

    .line 97
    sget-object v0, LuG;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget-object v0, LuG;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    invoke-static {p0, p1, p5}, LuG;->a(Landroid/support/v4/app/FragmentActivity;LzF;Lna;)V

    .line 101
    invoke-static {p0, p5, p6}, LuG;->a(Landroid/support/v4/app/FragmentActivity;Lna;Z)V

    .line 103
    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentActivity;LzF;Lna;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x1

    .line 108
    invoke-interface {p2}, Lna;->a()LmY;

    move-result-object v0

    invoke-interface {v0}, LmY;->a()Landroid/net/Uri;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 110
    sget-object v1, LuG;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, LzF;->a(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Luo;->contact_android:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    sget-object v1, LuG;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_26
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 121
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2}, Lna;->a()LmY;

    move-result-object v1

    invoke-interface {v1}, LmY;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    sget-object v3, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 126
    sget-object v0, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 127
    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2}, Lna;->a()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 129
    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v3, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 133
    sget-object v0, LuG;->a:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget-object v0, LuG;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    sget-object v0, LuG;->a:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget-object v0, LuG;->a:Landroid/widget/TextView;

    sget-object v1, LuG;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    sget-object v0, LuG;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 139
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/Resources;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    if-nez p0, :cond_3

    .line 200
    :cond_2
    :goto_2
    return-void

    .line 193
    :cond_3
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_2

    .line 195
    sget v0, Luo;->discussion_all_discussions_tile_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 197
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 198
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
