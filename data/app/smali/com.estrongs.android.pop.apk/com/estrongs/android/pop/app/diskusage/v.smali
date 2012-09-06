.class public Lcom/estrongs/android/pop/app/diskusage/v;
.super Lcom/estrongs/android/pop/popupwindowwitharrow/e;


# static fields
.field private static i:Lcom/estrongs/android/pop/app/diskusage/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/v;->i:Lcom/estrongs/android/pop/app/diskusage/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/view/View;Ljava/lang/String;II)Lcom/estrongs/android/pop/app/diskusage/v;
    .registers 11

    const-class v6, Lcom/estrongs/android/pop/app/diskusage/v;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/v;->i:Lcom/estrongs/android/pop/app/diskusage/v;

    if-nez v0, :cond_16

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/v;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/diskusage/v;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/v;->i:Lcom/estrongs/android/pop/app/diskusage/v;

    :cond_16
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/v;->i:Lcom/estrongs/android/pop/app/diskusage/v;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v6

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method protected a()V
    .registers 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v4, v0, [I

    fill-array-data v4, :array_142

    new-array v5, v0, [I

    fill-array-data v5, :array_154

    new-array v6, v0, [I

    fill-array-data v6, :array_166

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v9

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v2, 0x7f090267

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v2, 0x7f090268

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v2, 0x7f090269

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v2, 0x7f09026a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v2, 0x7f09026b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v2, v3

    :goto_85
    array-length v1, v4

    if-lt v2, v1, :cond_104

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_9f

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_9f
    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    check-cast v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-virtual {v2, v9}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Z)[J

    move-result-object v2

    if-eqz v2, :cond_b8

    invoke-virtual {v1, v2, v4}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    :goto_b5
    array-length v1, v7

    if-lt v3, v1, :cond_11a

    :cond_b8
    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/v;->f:Landroid/content/Context;

    const v5, 0x7f09026c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/v;->c(Landroid/view/View;)V

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4387

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/v;->d(I)V

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43ae

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/v;->e(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/v;->h()V

    return-void

    :cond_104
    aget v1, v5, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    aget v8, v4, v2

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_85

    :cond_11a
    aget v1, v6, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v7, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v8, v2, v3

    invoke-static {v8, v9}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b5

    :array_142
    .array-data 0x4
        0x0t 0x9ct 0xfft 0xfft
        0xadt 0xa3t 0x31t 0xfft
        0xbft 0x5at 0xc4t 0xfft
        0x1t 0x2t 0x9at 0xfft
        0x43t 0xb7t 0x82t 0xfft
        0x0t 0xfft 0xfct 0xfft
        0xcdt 0xc7t 0xc2t 0xfft
    .end array-data

    :array_154
    .array-data 0x4
        0x9ct 0x0t 0x7t 0x7ft
        0x9et 0x0t 0x7t 0x7ft
        0xa0t 0x0t 0x7t 0x7ft
        0xa2t 0x0t 0x7t 0x7ft
        0xa4t 0x0t 0x7t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
    .end array-data

    :array_166
    .array-data 0x4
        0x9dt 0x0t 0x7t 0x7ft
        0x9ft 0x0t 0x7t 0x7ft
        0xa1t 0x0t 0x7t 0x7ft
        0xa3t 0x0t 0x7t 0x7ft
        0xa5t 0x0t 0x7t 0x7ft
        0xa7t 0x0t 0x7t 0x7ft
        0xb1t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/v;->i:Lcom/estrongs/android/pop/app/diskusage/v;

    return-void
.end method
