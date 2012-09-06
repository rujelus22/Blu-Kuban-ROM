.class public Lcom/estrongs/android/pop/view/FilemgrUpgrade;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field private static r:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/estrongs/android/util/v;

.field private q:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    iput v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    iput v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->q:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->u:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/view/hl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/hl;-><init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/estrongs/android/pop/view/hr;
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/view/hr;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 8

    const/4 v6, 0x1

    const v5, -0x111112

    const v4, -0xeaab6a

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->q:Z

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    if-ne v0, v6, :cond_50

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_e

    :cond_50
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    if-nez v0, :cond_7c

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_7c
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    if-ne v0, v6, :cond_a3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f09024f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    :cond_a3
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_b8
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ef

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    :cond_ef
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10f

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    :cond_10f
    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/estrongs/android/util/v;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/util/v;->c:I

    iput-object p0, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/hq;

    invoke-direct {v1}, Lcom/estrongs/android/pop/view/hq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o:Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/estrongs/android/pop/view/hr;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lcom/estrongs/android/pop/view/hr;

    invoke-direct {v3}, Lcom/estrongs/android/pop/view/hr;-><init>()V

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_15

    move-object v0, v2

    :goto_14
    return-object v0

    :cond_15
    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hr;->a:Ljava/lang/String;

    const-string v1, "market"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hr;->b:Ljava/lang/String;

    const-string v1, "urls"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    instance-of v1, v0, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_48

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    check-cast v0, Lorg/json/simple/JSONArray;

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_48
    iget-object v0, v3, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6e

    move-object v0, v2

    goto :goto_14

    :cond_52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_68

    goto :goto_42

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_14

    :cond_6e
    move-object v0, v3

    goto :goto_14
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    return-void
.end method

.method private b()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->finish()V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v1

    :goto_18
    return v0

    :catch_19
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/util/v;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/.estrongs/tmp/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    new-instance v1, Lcom/estrongs/android/pop/view/hm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hm;-><init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->p:Lcom/estrongs/android/util/v;

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    const/4 v0, 0x1

    goto :goto_18
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n:I

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->n:I

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o:Z

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->setContentView(I)V

    new-array v0, v2, [I

    fill-array-data v0, :array_126

    new-array v1, v2, [I

    fill-array-data v1, :array_130

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a([I[I)V

    const v0, 0x7f0700ef

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0700f2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->f:Landroid/widget/TextView;

    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i:Landroid/widget/ImageView;

    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->j:Landroid/widget/TextView;

    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->h:Landroid/widget/TextView;

    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_b3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->finish()V

    :goto_b2
    return-void

    :cond_b3
    const-string v0, "status"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e7

    iput v4, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->m:I

    const-string v0, "market"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    const/4 v0, 0x0

    :goto_d2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_fb

    :cond_e7
    iget v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->l:I

    if-ne v0, v4, :cond_103

    const-string v0, "checkurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->u:Ljava/lang/String;

    if-nez v0, :cond_103

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->finish()V

    goto :goto_b2

    :cond_fb
    iget-object v3, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    :cond_103
    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/pop/view/hn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hn;-><init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/pop/view/ho;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ho;-><init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/view/hp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hp;-><init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a()V

    goto :goto_b2

    nop

    :array_126
    .array-data 0x4
        0xf0t 0x0t 0x7t 0x7ft
        0xf9t 0x0t 0x7t 0x7ft
        0xfbt 0x0t 0x7t 0x7ft
    .end array-data

    :array_130
    .array-data 0x4
        0x4t 0x2t 0x9t 0x7ft
        0x52t 0x2t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->o:Z

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->J()V

    :cond_b
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
