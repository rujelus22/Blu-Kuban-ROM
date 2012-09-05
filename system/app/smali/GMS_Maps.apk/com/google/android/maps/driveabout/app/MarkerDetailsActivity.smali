.class public Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/google/android/maps/driveabout/app/am;

.field private j:Lt/o;

.field private k:Lcom/google/android/maps/driveabout/app/bt;

.field private l:Lat/h;

.field private final m:Lcom/google/android/maps/driveabout/app/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/p;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/p;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bs;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v1, 0x0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bs;->h()F

    move-result v0

    const/high16 v2, -0x4080

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_23

    move v2, v0

    move v0, v1

    :goto_12
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1e

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(FLandroid/text/SpannableStringBuilder;)V

    const/high16 v4, 0x3f80

    sub-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_23
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bs;->g()I

    move-result v0

    if-lez v0, :cond_40

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0006

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_40
    return-object v3
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_18

    if-lez v0, :cond_10

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->b()V

    :cond_9
    const v0, 0x7f0b0062

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->finish()V

    return-void
.end method

.method private a(FLandroid/text/SpannableStringBuilder;)V
    .registers 8

    const/16 v4, 0x21

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/high16 v1, 0x3f40

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_20

    const/16 v1, 0x2a

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f020129

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1f
    return-void

    :cond_20
    const/high16 v1, 0x3e80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_39

    const/16 v1, 0x2b

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f020127

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1f

    :cond_39
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f020128

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1f
.end method

.method private a(Landroid/content/Intent;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(I)V

    :cond_d
    const-string v0, "com.google.android.maps.driveabout.LAYER_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.maps.driveabout.SERVER_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt/o;

    const-string v3, "com.google.android.maps.driveabout.LAT_E6"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.google.android.maps.driveabout.LNG_E6"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lt/o;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:Lt/o;

    new-instance v2, Lcom/google/android/maps/driveabout/app/bt;

    new-instance v3, Lcom/google/android/maps/driveabout/app/bO;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/bO;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/android/maps/driveabout/app/bt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bu;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    new-instance v0, LC/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-direct {v0, v1, v2}, LC/g;-><init>(Ljava/lang/String;Lat/g;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->l:Lat/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;Lcom/google/android/maps/driveabout/app/bR;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/bR;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;Lcom/google/android/maps/driveabout/app/bt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/bt;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bR;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bR;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e()V

    :cond_a
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bt;)V
    .registers 8

    const/16 v5, 0x40

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->b()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bt;->c()Lcom/google/android/maps/driveabout/app/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/bs;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_91

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3a
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->e()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_97

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4a
    new-instance v1, Lcom/google/android/maps/driveabout/app/bQ;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/bQ;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bs;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/bP;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/bP;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_72
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_86
    return-void

    :cond_87
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_91
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    :cond_97
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a
.end method

.method private static a(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    const-string v1, "SuppressDialogsForTest"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private b()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bt;->c()Lcom/google/android/maps/driveabout/app/bs;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_43

    move-object v0, v1

    :goto_1d
    new-instance v4, Lu/P;

    new-instance v5, Lu/Q;

    invoke-direct {v5, v2}, Lu/Q;-><init>([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:Lt/o;

    invoke-direct {v4, v5, v2, v3, v0}, Lu/P;-><init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-static {v4, v3, v1}, Lcom/google/android/maps/driveabout/app/bh;->a(Lu/P;I[Lu/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_9

    :cond_43
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private b(Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v0, "MarkerDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bt;->c()Lcom/google/android/maps/driveabout/app/bs;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bt;->c()Lcom/google/android/maps/driveabout/app/bs;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:Lt/o;

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/dx;->a(Landroid/content/Context;Ljava/lang/String;Lt/o;Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a()V

    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/bt;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bt;->c()Lcom/google/android/maps/driveabout/app/bs;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bs;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/M;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->setDefaultKeyMode(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0f00b4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0f00b5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00b7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bJ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bJ;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00b8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bK;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bK;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bL;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bL;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bM;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bM;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_c9

    new-instance v0, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bN;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bN;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_c9
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->l:Lat/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Landroid/content/Intent;)V

    const-string v0, "m"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->a()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->a()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->c()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->b()V

    return-void
.end method
