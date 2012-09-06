.class public Lcom/estrongs/android/pop/app/ImageBrowser;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/pop/esclasses/ESActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/ViewSwitcher$ViewFactory;"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/pop/d/f;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/widget/ImageSwitcher;

.field private h:Landroid/widget/Gallery;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->f:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_f
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v2, p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_71

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    const v2, 0x108003f

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    :goto_38
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->i:I

    sub-int v1, v2, v1

    div-int/lit8 v2, v1, 0x2

    iget v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->j:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    if-gez v2, :cond_56

    move v2, v0

    :cond_56
    if-gez v1, :cond_6f

    :goto_58
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/ImageSwitcher;->setPadding(IIII)V

    return-void

    :cond_5e
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38

    :cond_6f
    move v0, v1

    goto :goto_58

    :catch_71
    move-exception v1

    goto :goto_1f
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ImageBrowser;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ImageBrowser;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_10

    move-result-object v0

    move-object v3, v0

    :goto_d
    if-nez v3, :cond_13

    :cond_f
    return-void

    :catch_10
    move-exception v1

    move-object v3, v0

    goto :goto_d

    :cond_13
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v0, v2

    :goto_3c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iput v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->f:I

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public makeView()Landroid/view/View;
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    :try_start_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_15

    :goto_13
    const/4 v0, 0x1

    return v0

    :catch_15
    move-exception v0

    goto :goto_13
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f090055

    const v1, 0x7f09005b

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->e:Ljava/lang/String;

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->e:Ljava/lang/String;

    if-nez v0, :cond_38

    :goto_37
    return-void

    :cond_38
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->i:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->j:I

    const v0, 0x7f07011b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageBrowser;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_cc

    :cond_a0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Network error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Sorry, please try later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/estrongs/android/pop/app/bn;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bn;-><init>(Lcom/estrongs/android/pop/app/ImageBrowser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    :cond_cc
    const v0, 0x7f07011c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    new-instance v1, Lcom/estrongs/android/pop/app/bp;

    invoke-direct {v1, p0, p0}, Lcom/estrongs/android/pop/app/bp;-><init>(Lcom/estrongs/android/pop/app/ImageBrowser;Lcom/estrongs/android/pop/app/ImageBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    iget v1, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/bo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bo;-><init>(Lcom/estrongs/android/pop/app/ImageBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_37
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-lt v1, v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->removeAllViews()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->d:[Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->c:[Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->g:Landroid/widget/ImageSwitcher;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageBrowser;->h:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/app/ImageBrowser;->a(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
