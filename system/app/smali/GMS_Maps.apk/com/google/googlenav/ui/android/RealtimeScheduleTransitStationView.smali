.class public Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;
.super Lcom/google/googlenav/ui/android/TransitStationView;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cj;


# static fields
.field public static final a:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I


# instance fields
.field private final n:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xa

    .line 58
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i:I

    .line 61
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    .line 64
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j:I

    .line 67
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->k:I

    .line 70
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->l:I

    .line 73
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/google/googlenav/ui/android/aq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/aq;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->n:Ljava/util/Comparator;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/google/googlenav/ui/android/aq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/aq;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->n:Ljava/util/Comparator;

    .line 98
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    const/4 v0, 0x0

    .line 195
    :goto_7
    return-object v0

    .line 191
    :cond_8
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-static {p2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0401bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)Lcom/google/googlenav/android/c;
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j()Lcom/google/googlenav/android/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x7f100486

    const v4, 0x7f100485

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 380
    const v0, 0x7f100487

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 381
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->n()I

    move-result v2

    if-lez v2, :cond_55

    .line 382
    const/16 v2, 0x302

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100484

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 393
    :goto_39
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->n()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 394
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ca;->c(I)Lcom/google/googlenav/ca;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090019

    new-instance v5, Lcom/google/googlenav/ui/android/at;

    invoke-direct {v5, p0, v2, p2}, Lcom/google/googlenav/ui/android/at;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 390
    :cond_55
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    .line 417
    :cond_64
    return-void
.end method

.method private a(Lcom/google/googlenav/ck;Landroid/widget/LinearLayout;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 220
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    sget v1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 227
    const v2, 0x7f02042b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 239
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    const v0, 0x7f090006

    .line 243
    const v2, 0x7f090001

    .line 244
    invoke-virtual {p1}, Lcom/google/googlenav/ck;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 245
    invoke-virtual {p1}, Lcom/google/googlenav/ck;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 246
    invoke-virtual {p1}, Lcom/google/googlenav/ck;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 247
    invoke-virtual {p1}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 248
    invoke-virtual {p1}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f090024

    new-instance v3, Lcom/google/googlenav/ui/android/as;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/android/as;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/ck;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 258
    :cond_83
    return-void
.end method

.method private b(Lcom/google/googlenav/ca;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c(Lcom/google/googlenav/ca;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d(Lcom/google/googlenav/ca;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e(Lcom/google/googlenav/ca;)V

    .line 137
    return-void
.end method

.method private c(Lcom/google/googlenav/ca;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f100477

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 264
    const v0, 0x7f100475

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    const v1, 0x7f100476

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 266
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 267
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->l()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_30

    .line 268
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_2f
    return-void

    .line 272
    :cond_30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    const/16 v3, 0x38

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 278
    :goto_47
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->l()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 279
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->b(I)Lcom/google/googlenav/ck;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/ck;Landroid/widget/LinearLayout;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method static synthetic d()I
    .registers 1

    .prologue
    .line 54
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->k:I

    return v0
.end method

.method private d(Lcom/google/googlenav/ca;)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f10047e

    const v7, 0x7f10047a

    const v6, 0x7f100478

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    move v0, v2

    .line 290
    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->a()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 295
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 300
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->n:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 302
    const v0, 0x7f10047d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    .line 304
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ce

    .line 305
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const v3, 0x7f10047f

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    const/16 v3, 0x5d5

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    const v4, 0x7f10047b

    invoke-virtual {p0, v4, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 309
    const v3, 0x7f10047c

    const/16 v4, 0x208

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 310
    const/16 v3, 0x220

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 312
    new-instance v3, Lcom/google/googlenav/ui/android/au;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/ui/android/au;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V

    .line 313
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 316
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    .line 317
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    .line 318
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    .line 321
    const v0, 0x7f100479

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 322
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 324
    new-instance v1, Lcom/google/googlenav/ui/android/RealtimePulseImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->m:I

    invoke-direct {v1, v3, v4}, Lcom/google/googlenav/ui/android/RealtimePulseImageView;-><init>(Landroid/content/Context;I)V

    .line 325
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 326
    const v3, 0x7f02035b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 327
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->l:I

    sget v5, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->m:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 337
    :goto_cd
    return-void

    .line 332
    :cond_ce
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v1, 0x7f10047f

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_cd
.end method

.method static synthetic e()I
    .registers 1

    .prologue
    .line 54
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j:I

    return v0
.end method

.method private e(Lcom/google/googlenav/ca;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f100483

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 343
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    .line 345
    :goto_10
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 346
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->d()I

    move-result v4

    if-lez v4, :cond_23

    .line 351
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 354
    :cond_26
    const v0, 0x7f100482

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    .line 355
    const v3, 0x7f100480

    const/16 v4, 0x5d6

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 356
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    .line 358
    new-instance v3, Lcom/google/googlenav/ui/android/av;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/android/av;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V

    .line 359
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    .line 361
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 362
    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    .line 374
    :cond_62
    :goto_62
    return-void

    .line 366
    :cond_63
    const v1, 0x7f100481

    const/16 v2, 0x4f3

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 367
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    .line 370
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v0

    if-ge v0, v5, :cond_62

    invoke-virtual {p1}, Lcom/google/googlenav/ca;->n()I

    move-result v0

    if-ge v0, v5, :cond_62

    .line 371
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62
.end method

.method private i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/google/googlenav/android/c;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 216
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/cp;)Ljava/lang/CharSequence;
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 685
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v1, v0

    .line 689
    :goto_7
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4d

    invoke-virtual {p1}, Lcom/google/googlenav/cp;->d()I

    move-result v3

    if-ge v1, v3, :cond_4d

    .line 690
    invoke-virtual {p1, v1}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v3

    .line 693
    invoke-virtual {v3}, Lcom/google/googlenav/cd;->a()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 694
    if-lez v0, :cond_21

    .line 695
    const-string v4, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 697
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 698
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 699
    invoke-virtual {v3}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v5

    .line 700
    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 702
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f00ba

    invoke-direct {v3, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 689
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 706
    :cond_4d
    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h:Lcom/google/googlenav/ca;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b(Lcom/google/googlenav/ca;)V

    .line 175
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 184
    const v0, 0x7f100484

    const/16 v1, 0x5d4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    .line 185
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->Z()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 159
    sget-object v0, Lcom/google/googlenav/z;->e:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/android/ar;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/ar;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 169
    :goto_22
    return-void

    .line 167
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->g()V

    goto :goto_22
.end method

.method public setTransitStation(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;->setTransitStation(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V

    .line 108
    const v0, 0x7f10036a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 111
    invoke-virtual {p1, p0}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/cj;)V

    .line 112
    const/16 v0, 0x54

    const-string v1, "ts"

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b(Lcom/google/googlenav/ca;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/ca;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V

    .line 118
    return-void
.end method
