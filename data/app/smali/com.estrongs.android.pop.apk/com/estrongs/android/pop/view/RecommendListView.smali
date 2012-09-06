.class public Lcom/estrongs/android/pop/view/RecommendListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:[Lcom/estrongs/android/pop/view/a/k;

.field private e:Lcom/estrongs/android/pop/view/lj;

.field private f:Ljava/lang/Object;

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/View$OnTouchListener;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/view/li;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/li;-><init>(Lcom/estrongs/android/pop/view/RecommendListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->h:Landroid/view/View$OnTouchListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/view/li;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/li;-><init>(Lcom/estrongs/android/pop/view/RecommendListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->h:Landroid/view/View$OnTouchListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/view/li;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/li;-><init>(Lcom/estrongs/android/pop/view/RecommendListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->h:Landroid/view/View$OnTouchListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/estrongs/android/util/v;)I
    .registers 5

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    const/4 v1, -0x1

    :cond_b
    return v1

    :cond_c
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v2, v2, v1

    if-eq v0, v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private a(ILcom/estrongs/android/pop/view/a/k;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p2}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/k;)V

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/a/e;->d(Lcom/estrongs/android/pop/view/a/k;)V

    :cond_1f
    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    goto :goto_6
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/RecommendListView;ILcom/estrongs/android/pop/view/a/k;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(ILcom/estrongs/android/pop/view/a/k;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V
    .registers 13

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const v0, 0x7f0701c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0701ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0701cb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0701cc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0701cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v5, 0x7f0701ce

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0701c8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0701c9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v8, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_bd

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    iget-wide v5, p2, Lcom/estrongs/android/pop/view/a/k;->n:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_b6

    const/4 v0, 0x0

    :goto_94
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b6
    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    div-long v0, v5, v0

    long-to-int v0, v0

    goto :goto_94

    :cond_bd
    iget v8, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    if-nez v8, :cond_152

    iget-object v8, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v9, 0x7f0901bb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3e8

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v2, "0%"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    if-nez v2, :cond_e9

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/estrongs/android/pop/view/a/e;->b(Lcom/estrongs/android/pop/view/a/k;)I

    move-result v2

    iput v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    :cond_e9
    iget v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    if-eqz v2, :cond_f2

    iget v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12e

    :cond_f2
    iget-object v2, p2, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_121

    iget-object v2, p2, Lcom/estrongs/android/pop/view/a/k;->d:Ljava/lang/String;

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_121

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v3, 0x7f090203

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10c
    :goto_10c
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/estrongs/android/pop/view/a/k;->f:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_121
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v3, 0x7f090202

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10c

    :cond_12e
    iget v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_140

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v3, 0x7f090204

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10c

    :cond_140
    iget v2, p2, Lcom/estrongs/android/pop/view/a/k;->o:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10c

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v3, 0x7f090205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10c

    :cond_152
    iget v0, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    iget-wide v6, p2, Lcom/estrongs/android/pop/view/a/k;->n:J

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-nez v2, :cond_19c

    const/4 v0, 0x0

    :goto_16e
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_19c
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long v0, v6, v0

    long-to-int v0, v0

    goto :goto_16e

    :cond_1a3
    iget v0, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e5

    iget-wide v0, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "100%"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_1e5
    iget v0, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_204

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_204
    iget v0, p2, Lcom/estrongs/android/pop/view/a/k;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v6, p2, Lcom/estrongs/android/pop/view/a/k;->n:J

    invoke-static {v6, v7}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    invoke-static {v6, v7}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_266

    const/4 v0, 0x0

    :goto_238
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_266
    iget-wide v0, p2, Lcom/estrongs/android/pop/view/a/k;->n:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    iget-wide v6, p2, Lcom/estrongs/android/pop/view/a/k;->m:J

    div-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_238
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/RecommendListView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/RecommendListView;)[Lcom/estrongs/android/pop/view/a/k;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(I)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e249

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/RecommendListView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/RecommendListView;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/RecommendListView;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->h:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/lj;->notifyDataSetChanged()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->setSelection(I)V

    :cond_17
    return-void
.end method

.method public a(I)V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/k;I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, p1, :cond_10

    if-gt p1, v1, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    goto :goto_10
.end method

.method public a(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iput-object p2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v0
.end method

.method public a(Landroid/os/Handler;)V
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/a/e;->b(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Landroid/os/Handler;[Lcom/estrongs/android/pop/view/a/k;)V
    .registers 7

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->g:Landroid/os/Handler;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    if-nez v0, :cond_37

    if-eqz p2, :cond_30

    array-length v0, p2

    if-lez v0, :cond_30

    iput-object p2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    new-instance v0, Lcom/estrongs/android/pop/view/lj;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/pop/view/lj;-><init>(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/a/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/lj;->notifyDataSetChanged()V

    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->a()V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/lj;->notifyDataSetChanged()V

    goto :goto_30
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/util/v;)I

    move-result v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v1, :cond_a

    if-gt v1, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->b:Z

    return-void
.end method

.method public a([Lcom/estrongs/android/pop/view/a/k;)V
    .registers 6

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    new-instance v0, Lcom/estrongs/android/pop/view/lj;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/pop/view/lj;-><init>(Lcom/estrongs/android/pop/view/RecommendListView;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/a/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->e:Lcom/estrongs/android/pop/view/lj;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/lj;->notifyDataSetChanged()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->setSelection(I)V

    goto :goto_6
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/e;->a([Lcom/estrongs/android/pop/view/a/k;I)V

    goto :goto_7
.end method

.method public b(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/util/v;)I

    move-result v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v1, :cond_2a

    if-gt v1, v2, :cond_2a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    :cond_2a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RecommendListView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    array-length v0, v0

    goto :goto_5
.end method

.method public c(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/util/v;)I

    move-result v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v1, :cond_a

    if-gt v1, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    goto :goto_a
.end method

.method public d(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/util/v;)I

    move-result v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v1, :cond_a

    if-gt v1, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/view/View;Lcom/estrongs/android/pop/view/a/k;)V

    goto :goto_a
.end method

.method public e(Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Lcom/estrongs/android/util/v;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RecommendListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v1, :cond_4

    if-lt v2, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RecommendListView;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    const v2, 0x7f0701c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RecommendListView;->d:[Lcom/estrongs/android/pop/view/a/k;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method
