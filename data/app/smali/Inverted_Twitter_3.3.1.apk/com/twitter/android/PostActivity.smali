.class public Lcom/twitter/android/PostActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/f;
.implements Lcom/twitter/android/util/w;
.implements Lcom/twitter/android/w;
.implements Lcom/twitter/android/widget/h;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/location/LocationManager;

.field private C:Lcom/twitter/android/cu;

.field private D:Lcom/twitter/android/cw;

.field private E:Landroid/content/SharedPreferences;

.field private F:Ljava/lang/String;

.field private G:Landroid/widget/TextView;

.field private H:Lcom/twitter/android/gn;

.field private I:Lcom/twitter/android/dc;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/TextView;

.field private final L:Lcom/twitter/android/cv;

.field private M:Z

.field final d:Ljava/util/HashMap;

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:J

.field j:J

.field k:Landroid/view/View;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/ProgressBar;

.field n:Lcom/twitter/android/widget/ShadowTextView;

.field o:Landroid/widget/ImageButton;

.field p:Landroid/widget/ImageButton;

.field q:Landroid/widget/MultiAutoCompleteTextView;

.field r:Lcom/twitter/android/cz;

.field s:Lcom/twitter/android/client/Session;

.field t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Lcom/twitter/android/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/cv;

    invoke-direct {v0, p0}, Lcom/twitter/android/cv;-><init>(Lcom/twitter/android/PostActivity;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->L:Lcom/twitter/android/cv;

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/twitter/android/dc;
    .registers 4

    new-instance v0, Lcom/twitter/android/dc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/twitter/android/dc;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cz;->a(Lcom/twitter/android/dd;)V

    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/android/dc;->c:I

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;)Lcom/twitter/android/dc;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->J:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->w:Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/PostActivity;)V
    .registers 1

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/PostActivity;)Landroid/location/LocationManager;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    return-object v0
.end method

.method private c(Z)V
    .registers 5

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_12
.end method

.method static synthetic d(Lcom/twitter/android/PostActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()V

    return-void
.end method

.method private h()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->g:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/af;

    move-result-object v0

    iput-boolean v3, v0, Lcom/twitter/android/api/af;->b:Z

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/api/af;)Ljava/lang/String;

    iput-boolean v3, p0, Lcom/twitter/android/PostActivity;->g:Z

    :cond_16
    return-void
.end method

.method private i()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, -0x1

    const-wide/high16 v5, 0x7ff8

    iput-boolean v12, p0, Lcom/twitter/android/PostActivity;->h:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v0}, Lcom/twitter/android/cz;->a()Landroid/location/Location;

    move-result-object v7

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->i:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_21

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->i:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/client/b;->c(Lcom/twitter/android/client/Session;J)V

    :cond_21
    if-eqz v7, :cond_64

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->j:J

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->b(Ljava/lang/String;)V

    :goto_3a
    iget v2, p0, Lcom/twitter/android/PostActivity;->y:I

    if-ne v2, v12, :cond_75

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->z:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :goto_47
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_7f

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v11}, Lcom/twitter/android/PostActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_63
    return-void

    :cond_64
    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->j:J

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v10

    move-wide v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->b(Ljava/lang/String;)V

    goto :goto_3a

    :cond_75
    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->y:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_47

    :cond_7f
    invoke-virtual {p0, v11}, Lcom/twitter/android/PostActivity;->setResult(I)V

    const-string v0, "home"

    invoke-super {p0, v0}, Lcom/twitter/android/BaseActivity;->d(Ljava/lang/String;)V

    goto :goto_63
.end method

.method private j()Z
    .registers 5

    iget-wide v0, p0, Lcom/twitter/android/PostActivity;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->w:Z

    if-nez v0, :cond_1a

    :cond_16
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private k()I
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    if-nez v1, :cond_1e

    move v1, v2

    :goto_e
    if-lez v0, :cond_20

    iget v3, p0, Lcom/twitter/android/PostActivity;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v3, v2}, Lcom/twitter/android/client/b;->a(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v1, 0x1

    goto :goto_e

    :cond_20
    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->a(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->setResult(I)V

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    goto :goto_a
.end method

.method final a(Lcom/twitter/android/dc;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Lcom/twitter/android/dc;->a(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/twitter/android/ct;

    invoke-direct {v0, p0}, Lcom/twitter/android/ct;-><init>(Lcom/twitter/android/PostActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/android/dc;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ct;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->H:Lcom/twitter/android/gn;

    invoke-virtual {v0}, Lcom/twitter/android/gn;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_1e
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;)V

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v4

    iget-object v4, v4, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    iput-object p1, v0, Lcom/twitter/android/cz;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    return-void
.end method

.method final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->A:Landroid/widget/ImageButton;

    if-eqz p1, :cond_d

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_a
    iput-boolean p1, p0, Lcom/twitter/android/PostActivity;->v:Z

    return-void

    :cond_d
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_a
.end method

.method final a([Landroid/os/Parcelable;)V
    .registers 15

    const/16 v12, 0x20

    const/16 v11, 0x40

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_19
    if-ltz v2, :cond_8b

    aget-object v0, p1, v2

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-object v7, v0, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v8, v0}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_4e

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lcom/twitter/android/provider/m;->o:J

    iput-wide v9, p0, Lcom/twitter/android/PostActivity;->j:J

    iget-object v7, v0, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    if-eqz v7, :cond_4e

    iget-object v0, v0, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->F:Ljava/lang/String;

    :cond_4e
    if-eqz v8, :cond_87

    iget-object v0, v8, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    iget-object v0, v8, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5a
    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    cmp-long v8, v5, v8

    if-eqz v8, :cond_5a

    iget-object v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    iget-object v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_87
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_19

    :cond_8b
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_a4

    :cond_9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    :cond_a4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_be

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void

    :cond_be
    move v0, v1

    goto :goto_b6
.end method

.method public final a_(I)V
    .registers 4

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_22

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->a_(I)V

    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_7

    :cond_13
    invoke-virtual {p0, v1}, Lcom/twitter/android/PostActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->finish()V

    goto :goto_7

    :sswitch_1a
    invoke-direct {p0, v1}, Lcom/twitter/android/PostActivity;->c(Z)V

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()V

    goto :goto_7

    nop

    :sswitch_data_22
    .sparse-switch
        0x7f07004d -> :sswitch_1a
        0x7f07005a -> :sswitch_8
    .end sparse-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/android/PostActivity;->w:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->L:Lcom/twitter/android/cv;

    invoke-virtual {v0, v2}, Lcom/twitter/android/cv;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Lcom/twitter/android/cv;->removeMessages(I)V

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/cv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/cv;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final b()V
    .registers 5

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    invoke-static {v0, p0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Lcom/twitter/android/cu;

    if-nez v0, :cond_17

    new-instance v0, Lcom/twitter/android/cu;

    invoke-direct {v0, p0}, Lcom/twitter/android/cu;-><init>(Lcom/twitter/android/PostActivity;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->C:Lcom/twitter/android/cu;

    :cond_17
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->L:Lcom/twitter/android/cv;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->C:Lcom/twitter/android/cu;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/cv;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

.method public final b(I)V
    .registers 3

    iput p1, p0, Lcom/twitter/android/PostActivity;->x:I

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->M:Z

    if-eqz v0, :cond_10

    if-lez p1, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->M:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->x()V

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->e()V

    return-void
.end method

.method final b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    if-eqz p1, :cond_11

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    :goto_b
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    return-void

    :cond_11
    const v1, -0x10001

    and-int/2addr v0, v1

    goto :goto_b
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Lcom/twitter/android/cu;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->L:Lcom/twitter/android/cv;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->C:Lcom/twitter/android/cu;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cv;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cz;->a(I)Lcom/twitter/android/dd;

    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cz;->b(Lcom/twitter/android/dd;)V

    iget v0, p0, Lcom/twitter/android/PostActivity;->e:I

    packed-switch v0, :pswitch_data_36

    :goto_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->e:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    iget-object v0, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    iget-object v0, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/twitter/android/util/f;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->e()V

    return-void

    :pswitch_23
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->o:Landroid/widget/ImageButton;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c

    :pswitch_2c
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/widget/ImageButton;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method

.method final e()V
    .registers 4

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->k()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->G:Landroid/widget/TextView;

    rsub-int v2, v0, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/widget/ShadowTextView;

    if-eqz v0, :cond_1c

    const/16 v2, 0x8c

    if-gt v0, v2, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Lcom/twitter/android/api/TweetEntities;
    .registers 6

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    if-eqz v1, :cond_30

    new-instance v0, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    if-eqz v2, :cond_2f

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    iget-object v3, v1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/android/dc;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    iget-object v1, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    packed-switch p1, :pswitch_data_8e

    goto :goto_7

    :pswitch_c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cz;->a(Landroid/net/Uri;)Lcom/twitter/android/dd;

    move-result-object v1

    if-eqz v1, :cond_27

    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_27
    iget v1, p0, Lcom/twitter/android/PostActivity;->e:I

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_2e
    iput v2, p0, Lcom/twitter/android/PostActivity;->e:I

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->p:Landroid/widget/ImageButton;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/dc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/dc;)V

    goto :goto_7

    :pswitch_40
    iget v0, p0, Lcom/twitter/android/PostActivity;->e:I

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_47
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/PostActivity;->e:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->o:Landroid/widget/ImageButton;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/android/cx;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/dc;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/twitter/android/cx;-><init>(Lcom/twitter/android/PostActivity;Ljava/io/File;Lcom/twitter/android/dc;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    :pswitch_6c
    if-ne p2, v2, :cond_7

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gf;

    iget-object v0, v0, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->z:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->a(Landroid/accounts/Account;)V

    goto/16 :goto_7

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_40
        :pswitch_6c
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onBackPressed()V

    goto :goto_a
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x2

    const v7, 0x7f0b00cc

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_162

    :cond_e
    :goto_e
    return-void

    :sswitch_f
    invoke-static {p0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;)I

    move-result v1

    if-le v1, v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    :sswitch_2d
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.location"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {p0, v7}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;I)V

    goto :goto_e

    :cond_3d
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->c()Z

    move-result v2

    if-nez v2, :cond_4a

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_e

    :cond_4a
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    invoke-static {v2}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;)Z

    move-result v2

    if-nez v2, :cond_57

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_e

    :cond_57
    iget-boolean v2, p0, Lcom/twitter/android/PostActivity;->v:Z

    if-eqz v2, :cond_6f

    invoke-virtual {p0, v1}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v0}, Lcom/twitter/android/cz;->b()Lcom/twitter/android/db;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cz;->b(Lcom/twitter/android/dd;)V

    goto :goto_e

    :cond_6f
    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->b()V

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()V

    goto :goto_e

    :sswitch_79
    invoke-direct {p0, v1}, Lcom/twitter/android/PostActivity;->c(Z)V

    iget v1, p0, Lcom/twitter/android/PostActivity;->e:I

    if-ne v1, v0, :cond_84

    invoke-virtual {p0, v6}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_e

    :cond_84
    :try_start_84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_97
    .catch Landroid/content/ActivityNotFoundException; {:try_start_84 .. :try_end_97} :catch_99

    goto/16 :goto_e

    :catch_99
    move-exception v0

    invoke-static {p0, v7}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;I)V

    goto/16 :goto_e

    :sswitch_9f
    invoke-direct {p0, v1}, Lcom/twitter/android/PostActivity;->c(Z)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long v1, v2, v4

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_d2

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    :cond_d2
    iget v0, p0, Lcom/twitter/android/PostActivity;->e:I

    if-ne v0, v8, :cond_db

    invoke-virtual {p0, v6}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto/16 :goto_e

    :cond_db
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/twitter/android/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->t:Ljava/lang/String;

    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->t:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    :try_start_f9
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_fc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f9 .. :try_end_fc} :catch_fe

    goto/16 :goto_e

    :catch_fe
    move-exception v0

    invoke-static {p0, v7}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;I)V

    goto/16 :goto_e

    :sswitch_104
    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->c(Z)V

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v4

    if-lez v4, :cond_139

    iget-object v5, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v5

    if-lez v5, :cond_147

    iget-object v6, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_147

    :goto_132
    if-nez v0, :cond_139

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_139
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_e

    :cond_147
    move v0, v1

    goto :goto_132

    :sswitch_149
    invoke-virtual {p0, v6}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto/16 :goto_e

    :sswitch_14e
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v1

    if-lez v1, :cond_15d

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    :cond_15d
    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->c(Z)V

    goto/16 :goto_e

    :sswitch_data_162
    .sparse-switch
        0x7f070029 -> :sswitch_f
        0x7f070076 -> :sswitch_14e
        0x7f07007c -> :sswitch_149
        0x7f07007e -> :sswitch_9f
        0x7f07007f -> :sswitch_79
        0x7f070080 -> :sswitch_104
        0x7f070081 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const v0, 0x7f030035

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lcom/twitter/android/e;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/twitter/android/e;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/f;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->z:Lcom/twitter/android/e;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->E:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v0, "account_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_184

    invoke-virtual {v9, v0}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    move-object v8, v0

    :goto_3f
    iput-object v8, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/widget/Navbar;

    const v0, 0x7f07006c

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f07004d

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ShadowTextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/widget/ShadowTextView;

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->A:Landroid/widget/ImageButton;

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->o:Landroid/widget/ImageButton;

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->G:Landroid/widget/TextView;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gn;

    sget-object v2, Lcom/twitter/android/provider/ab;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, p0, v0, v9}, Lcom/twitter/android/gn;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/b;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->H:Lcom/twitter/android/gn;

    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/view/View;

    const v0, 0x7f07007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f07007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/widget/ProgressBar;

    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/twitter/android/widget/i;->a()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lcom/twitter/android/widget/j;->a()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->H:Lcom/twitter/android/gn;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/twitter/android/cy;

    invoke-direct {v1, p0}, Lcom/twitter/android/cy;-><init>(Lcom/twitter/android/PostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->b(Z)V

    invoke-virtual {v9}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/af;

    move-result-object v0

    if-eqz v0, :cond_18b

    iget-boolean v0, v0, Lcom/twitter/android/api/af;->b:Z

    if-eqz v0, :cond_18b

    const/4 v0, 0x1

    :goto_11a
    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->g:Z

    if-eqz p1, :cond_25e

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cz;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    const-string v0, "do_post"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->h:Z

    const-string v0, "pic_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->t:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_162

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "selection"

    const-string v1, "selection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_162
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v0}, Lcom/twitter/android/cz;->c()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_16e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    invoke-virtual {v0}, Lcom/twitter/android/dd;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_466

    move v0, v1

    :goto_182
    move v1, v0

    goto :goto_16e

    :cond_184
    invoke-virtual {v9}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_3f

    :cond_18b
    const/4 v0, 0x0

    goto :goto_11a

    :pswitch_18d
    check-cast v0, Lcom/twitter/android/dc;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/dc;

    const-string v2, "a"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/PostActivity;->e:I

    iget v2, p0, Lcom/twitter/android/PostActivity;->e:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1b1

    const/4 v2, 0x1

    :goto_19f
    iget-object v5, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    if-eqz v5, :cond_1bc

    if-eqz v2, :cond_1b3

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->o:Landroid/widget/ImageButton;

    const v5, 0x7f0200b4

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1ad
    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/dc;)V

    goto :goto_16e

    :cond_1b1
    const/4 v2, 0x0

    goto :goto_19f

    :cond_1b3
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->p:Landroid/widget/ImageButton;

    const v5, 0x7f0200c4

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1ad

    :cond_1bc
    const/4 v0, 0x1

    goto :goto_182

    :cond_1be
    if-eqz v1, :cond_1c3

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_1c3
    const-string v0, "show_link_hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->M:Z

    move v0, v3

    :goto_1cd
    new-instance v1, Lcom/twitter/android/cw;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/cw;-><init>(Lcom/twitter/android/PostActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/cw;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "draft_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->i:J

    const-string v0, "android.intent.extra.UID"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->j:J

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    iget v0, p0, Lcom/twitter/android/PostActivity;->y:I

    packed-switch v0, :pswitch_data_46c

    :cond_1f9
    :goto_1f9
    const/4 v0, 0x1

    invoke-virtual {v9, v0, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->J:Landroid/widget/ImageView;

    const v0, 0x7f070079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ref_event"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45a

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->x:Lcom/twitter/android/service/ScribeEvent;

    const-string v0, "ref_event"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_12

    :cond_25e
    new-instance v0, Lcom/twitter/android/cz;

    invoke-direct {v0}, Lcom/twitter/android/cz;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->E:Landroid/content/SharedPreferences;

    const-string v1, "location_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->h:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c0

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    :goto_27e
    const-string v0, "entities"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities;

    if-eqz v0, :cond_2ba

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v2, :cond_2ba

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2ba

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/dc;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/android/dc;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/PostActivity;->e:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/widget/ImageButton;

    const v3, 0x7f0200c4

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/dc;)V

    :cond_2ba
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->M:Z

    move v0, v1

    goto/16 :goto_1cd

    :cond_2c0
    const-string v2, "com.twitter.android.post.status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    goto :goto_27e

    :cond_2cc
    const-string v2, "com.twitter.android.post.reply"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d8

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    goto :goto_27e

    :cond_2d8
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e4

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    goto :goto_27e

    :cond_2e4
    const-string v2, "com.twitter.android.post.quote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    goto :goto_27e

    :cond_2f0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fc

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    goto :goto_27e

    :cond_2fc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_311
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v0, "twitter"

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40e

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v0, "text"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_343

    const-string v0, "message"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_343
    const-string v6, "post"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ea

    :try_start_34b
    const-string v1, "in_reply_to_status_id"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/android/PostActivity;->j:J
    :try_end_357
    .catch Ljava/lang/NumberFormatException; {:try_start_34b .. :try_end_357} :catch_3dc

    :goto_357
    if-eqz v0, :cond_3e3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_35f
    const-string v1, "url"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "via"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_380

    const v5, 0x7f0b0057

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_385
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ac

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3ac

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_3ac

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v4, v0}, Lcom/twitter/android/cz;->a(Landroid/net/Uri;)Lcom/twitter/android/dd;

    move-result-object v4

    if-nez v4, :cond_3ac

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/dc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/dc;)V

    :cond_3ac
    if-eqz v1, :cond_417

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_417

    invoke-direct {p0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    const-string v0, "selection"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_417

    const-string v0, "selection"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_417

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    if-ltz v2, :cond_417

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_417

    invoke-virtual {v3, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_1f9

    :catch_3dc
    move-exception v1

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/twitter/android/PostActivity;->j:J

    goto/16 :goto_357

    :cond_3e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_35f

    :cond_3ea
    const-string v6, "quote"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40a

    const/high16 v1, 0x7f0b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v11, "screen_name"

    invoke-virtual {v5, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v0, v6, v5

    invoke-virtual {p0, v1, v6}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_385

    :cond_40a
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_385

    :cond_40e
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_385

    :cond_417
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1f9

    :pswitch_420
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const-string v0, "reply_to_tweet"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_43c

    array-length v1, v0

    if-lez v1, :cond_43c

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a([Landroid/os/Parcelable;)V

    goto/16 :goto_1f9

    :cond_43c
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1f9

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/cw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/cw;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_45a
    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->x:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v9, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_12

    nop

    :pswitch_data_466
    .packed-switch 0x2
        :pswitch_18d
    .end packed-switch

    :pswitch_data_46c
    .packed-switch 0x0
        :pswitch_311
        :pswitch_420
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const v6, 0x7f0b00d7

    const v5, 0x7f0b00d6

    const v4, 0x7f0b00c2

    const v3, 0x1080027

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ac

    :goto_10
    return-object v0

    :pswitch_11
    new-instance v1, Lcom/twitter/android/co;

    invoke-direct {v1, p0}, Lcom/twitter/android/co;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    :pswitch_37
    new-instance v1, Lcom/twitter/android/cp;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/cp;-><init>(Lcom/twitter/android/PostActivity;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0102

    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00fc

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    :pswitch_6e
    new-instance v0, Lcom/twitter/android/cq;

    invoke-direct {v0, p0}, Lcom/twitter/android/cq;-><init>(Lcom/twitter/android/PostActivity;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-static {p0, v0}, Lcom/twitter/android/client/b;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    :pswitch_7a
    new-instance v0, Lcom/twitter/android/cr;

    invoke-direct {v0, p0}, Lcom/twitter/android/cr;-><init>(Lcom/twitter/android/PostActivity;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-static {p0, v0}, Lcom/twitter/android/client/b;->b(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    :pswitch_86
    new-instance v1, Lcom/twitter/android/cs;

    invoke-direct {v1, p0}, Lcom/twitter/android/cs;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_37
        :pswitch_11
        :pswitch_37
        :pswitch_6e
        :pswitch_7a
        :pswitch_86
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_enabled"

    iget-boolean v2, p0, Lcom/twitter/android/PostActivity;->v:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_15
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x65

    if-ne p2, v0, :cond_11

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->k()I

    move-result v0

    if-lez v0, :cond_11

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_11

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v0}, Lcom/twitter/android/cz;->b()Lcom/twitter/android/db;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/twitter/android/db;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/db;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cz;->a(Lcom/twitter/android/dd;)V

    :cond_13
    iget-object v1, v0, Lcom/twitter/android/db;->a:Landroid/location/Location;

    if-eqz p1, :cond_35

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_35

    :cond_25
    invoke-virtual {v0, p1}, Lcom/twitter/android/db;->a(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41a0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_35

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    :cond_35
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->performLongClick()Z

    move-result v0

    goto :goto_8

    :pswitch_data_10
    .packed-switch 0x7f070076
        :pswitch_9
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->s:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_26
    .packed-switch 0x7f0700d7
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onPause()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->removeDialog(I)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4

    const v0, 0x7f0b00c2

    packed-switch p1, :pswitch_data_14

    :goto_6
    return-void

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_6

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_6

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    const v0, 0x7f0700d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_12
    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->f:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/g;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/g;->a(Lcom/twitter/android/widget/h;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    goto :goto_f

    :cond_45
    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->v:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->h:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->b()V

    goto :goto_f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "data"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->r:Lcom/twitter/android/cz;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "mode"

    iget v1, p0, Lcom/twitter/android/PostActivity;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "do_post"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "text"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selection"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->q:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "a"

    iget v1, p0, Lcom/twitter/android/PostActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "show_link_hint"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pic_path"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onStop()V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-lez p4, :cond_17

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p4, v3, :cond_18

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_18

    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->b(Z)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/16 v1, 0x2f

    if-le v0, v1, :cond_20

    const/16 v1, 0x3a

    if-lt v0, v1, :cond_32

    :cond_20
    if-le v0, v4, :cond_26

    const/16 v1, 0x5b

    if-lt v0, v1, :cond_32

    :cond_26
    const/16 v1, 0x60

    if-le v0, v1, :cond_2e

    const/16 v1, 0x7a

    if-lt v0, v1, :cond_32

    :cond_2e
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_17

    :cond_32
    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->b(Z)V

    goto :goto_17
.end method
