.class public final Lcom/google/android/youtube/app/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final i:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field private static final j:[I

.field private static final k:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

.field private static final l:[I


# instance fields
.field protected final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/app/ui/as;

.field private c:Landroid/widget/Button;

.field private d:Landroid/app/Dialog;

.field private e:I

.field private f:Landroid/widget/Spinner;

.field private final g:Ljava/util/List;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 224
    new-array v0, v2, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/app/ui/aq;->i:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 227
    new-array v0, v2, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/android/youtube/app/ui/aq;->j:[I

    .line 246
    new-array v0, v2, [Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->UPCOMING:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->RECENTLY_BROADCASTED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/app/ui/aq;->k:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 249
    new-array v0, v2, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/youtube/app/ui/aq;->l:[I

    return-void

    .line 227
    :array_3c
    .array-data 0x4
        0xeft 0x0t 0xbt 0x7ft
        0xf0t 0x0t 0xbt 0x7ft
        0xf1t 0x0t 0xbt 0x7ft
        0xf2t 0x0t 0xbt 0x7ft
    .end array-data

    .line 249
    :array_48
    .array-data 0x4
        0x4t 0x2t 0xbt 0x7ft
        0x1t 0x2t 0xbt 0x7ft
        0x2t 0x2t 0xbt 0x7ft
        0x3t 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-ltz p4, :cond_24

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_24

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 72
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/as;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->b:Lcom/google/android/youtube/app/ui/as;

    .line 73
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->g:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/aq;->a:Landroid/app/Activity;

    .line 75
    iput p4, p0, Lcom/google/android/youtube/app/ui/aq;->h:I

    .line 76
    return-void

    .line 71
    :cond_24
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;ILandroid/widget/Spinner;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/ui/aq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;I)V

    .line 117
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/youtube/app/ui/ar;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, p3, p6}, Lcom/google/android/youtube/app/ui/ar;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 122
    return-void
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 279
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 283
    :goto_c
    return v0

    .line 278
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    sget-object v0, Lcom/google/android/youtube/app/ui/aq;->k:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    sget-object v1, Lcom/google/android/youtube/app/ui/aq;->l:[I

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;[Ljava/lang/Object;[I)Ljava/util/List;

    move-result-object v3

    .line 262
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/youtube/app/ui/aq;->k:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-static {v1, p2}, Lcom/google/android/youtube/app/ui/aq;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 264
    new-instance v0, Lcom/google/android/youtube/app/ui/aq;

    const v6, 0x7f04002d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/aq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    sget-object v0, Lcom/google/android/youtube/app/ui/aq;->i:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget-object v1, Lcom/google/android/youtube/app/ui/aq;->j:[I

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;[Ljava/lang/Object;[I)Ljava/util/List;

    move-result-object v3

    .line 240
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/youtube/app/ui/aq;->i:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    invoke-static {v1, p2}, Lcom/google/android/youtube/app/ui/aq;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 242
    new-instance v0, Lcom/google/android/youtube/app/ui/aq;

    const v6, 0x7f04002d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/aq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/aq;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_20

    aget-object v4, v1, v0

    iget v5, v4, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->stringId:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 209
    :cond_20
    new-instance v0, Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->ordinal()I

    move-result v4

    const v6, 0x7f04002d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/aq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aq;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_20

    aget-object v4, v1, v0

    iget v5, v4, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->stringId:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 173
    :cond_20
    new-instance v0, Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ordinal()I

    move-result v4

    const v6, 0x7f04002d

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/aq;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0
.end method

.method private static a(Landroid/app/Activity;[Ljava/lang/Object;[I)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 272
    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 274
    :cond_1c
    return-object v1
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method public final b()Ljava/lang/Enum;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/app/ui/aq;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/youtube/app/ui/aq;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 127
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/youtube/app/ui/aq;->h:I

    if-eq p3, v0, :cond_2c

    iput p3, p0, Lcom/google/android/youtube/app/ui/aq;->h:I

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->c:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/aq;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->g:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/aq;->b:Lcom/google/android/youtube/app/ui/as;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->g:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Enum;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/ui/as;->a(Ljava/lang/Enum;)V

    .line 159
    :cond_2c
    return-void

    .line 158
    :cond_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, p3, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1b
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    return-void
.end method
