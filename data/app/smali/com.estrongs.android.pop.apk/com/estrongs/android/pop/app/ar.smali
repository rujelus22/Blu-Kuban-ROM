.class public Lcom/estrongs/android/pop/app/ar;
.super Lcom/estrongs/android/widget/as;


# instance fields
.field protected a:Lcom/estrongs/android/pop/app/az;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/estrongs/android/pop/app/ba;

.field private final g:Ljava/text/Collator;

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 10

    const v6, 0x7f0902d0

    const v5, 0x7f07006e

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/estrongs/android/widget/as;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    const-string v0, "com.estrongs.android.pop.app.shortcut"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->g:Ljava/text/Collator;

    new-instance v0, Lcom/estrongs/android/pop/app/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/as;-><init>(Lcom/estrongs/android/pop/app/ar;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->h:Ljava/util/Comparator;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/ar;->i:Z

    invoke-static {p1}, Lcom/estrongs/android/a/f;->a(Landroid/app/Activity;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ar;->e:Landroid/view/LayoutInflater;

    :try_start_39
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ar;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_43} :catch_86

    move-result-object v0

    if-eqz v0, :cond_84

    move v0, v1

    :goto_47
    move v1, v0

    :goto_48
    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/ar;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_89

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_55
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ar;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/au;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/au;-><init>(Lcom/estrongs/android/pop/app/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ax;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/ax;-><init>(Lcom/estrongs/android/pop/app/ar;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/az;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/az;-><init>(Lcom/estrongs/android/pop/app/ar;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/az;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/az;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v5, v6}, Lcom/estrongs/android/pop/app/ar;->a(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ar;->a()V

    return-void

    :cond_84
    move v0, v2

    goto :goto_47

    :catch_86
    move-exception v0

    move v1, v2

    goto :goto_48

    :cond_89
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/at;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/at;-><init>(Lcom/estrongs/android/pop/app/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_55
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ar;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/ar;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ar;)Ljava/text/Collator;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->g:Ljava/text/Collator;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, -0x1

    if-le p5, v2, :cond_1c

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1c
    const v0, 0x7f07006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/ay;

    invoke-direct {v0, p0, p3, v1}, Lcom/estrongs/android/pop/app/ay;-><init>(Lcom/estrongs/android/pop/app/ar;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ar;Landroid/view/LayoutInflater;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ar;->e:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ar;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ar;)Lcom/estrongs/android/pop/app/ba;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->f:Lcom/estrongs/android/pop/app/ba;

    return-object v0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3b
    invoke-static {}, Lcom/estrongs/android/pop/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_60

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->h:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5e
    if-lt v1, v3, :cond_c9

    :cond_60
    return-void

    :cond_61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_82
    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    new-instance v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v3}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    iput-object v0, v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    iget-object v0, v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    :cond_b6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    const v3, 0x7f02007b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43

    :cond_c9
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_da

    :try_start_d1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/l;->a(Ljava/io/File;)Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_da} :catch_de

    :cond_da
    :goto_da
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5e

    :catch_de
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_da

    :cond_e3
    move-object v1, v0

    goto/16 :goto_3b
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ar;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ar;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/az;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/az;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/az;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "http://www.estrongs.com/download.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_d
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ar;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Gionee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Context;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_2b
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_d

    :catch_2f
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Context;)V

    goto :goto_d
.end method

.method public a(Lcom/estrongs/android/pop/app/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ar;->f:Lcom/estrongs/android/pop/app/ba;

    return-void
.end method

.method protected b()I
    .registers 2

    const v0, 0x7f03000e

    return v0
.end method

.method protected c()V
    .registers 8

    const v6, 0x7f02004d

    const/4 v5, -0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ar;->i:Z

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ar;->i:Z

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ar;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    const v2, 0x7f09020f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f020076

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Spreadtrum_cmcc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    const v2, 0x7f0901e8

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const v4, 0x7f020034

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4d
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020075

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ar;->o:Landroid/app/Activity;

    const v3, 0x7f0901db

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020078

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_8
.end method
