.class public Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;
.super Lcom/google/googlenav/actionbar/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;


# static fields
.field private static final a:[I

.field public static final b:Landroid/graphics/drawable/ColorDrawable;

.field public static final c:Landroid/graphics/drawable/ColorDrawable;

.field static final synthetic d:Z


# instance fields
.field private e:Landroid/widget/SearchView;

.field private f:Lcom/google/googlenav/ui/D;

.field private g:Landroid/app/SearchManager;

.field private h:Lcom/google/android/maps/MapsActivity;

.field private i:Lcom/google/googlenav/actionbar/b;

.field private j:Landroid/view/MenuItem;

.field private k:Landroid/app/ActionBar;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:Law/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Z

    new-array v0, v1, [I

    const v1, 0x10102eb

    aput v1, v0, v2

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a:[I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x6700

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x3400

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->c:Landroid/graphics/drawable/ColorDrawable;

    return-void

    :cond_29
    move v0, v2

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Landroid/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    return-object v0
.end method

.method private a(Ljava/lang/String;LaJ/B;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v1

    invoke-virtual {v1, p2}, LaJ/u;->c(LaJ/B;)V

    :cond_21
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1}, Lcom/google/googlenav/actionbar/b;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p1, p2}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    :cond_32
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1, p1}, Lcom/google/googlenav/actionbar/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1, p1}, Lcom/google/googlenav/actionbar/b;->a(Ljava/lang/String;)Lcom/google/googlenav/bb;

    move-result-object v1

    if-eqz v0, :cond_5e

    new-instance v2, Lcom/google/googlenav/bc;

    invoke-direct {v2, v1}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->b(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    :goto_4f
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_8

    :cond_5e
    move-object v0, v1

    goto :goto_4f
.end method

.method static synthetic b(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/actionbar/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method private l()Law/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Law/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/actionbar/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/actionbar/e;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Law/f;

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Law/f;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    if-eqz p3, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_45
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_f
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Z

    if-nez v0, :cond_14

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Z

    if-nez v0, :cond_20

    if-nez p3, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    iput-object p3, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/actionbar/b;

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    const/16 v1, 0x40e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Landroid/app/SearchManager;

    invoke-virtual {v2, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    new-instance v0, Lcom/google/googlenav/actionbar/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/actionbar/d;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V
    .registers 8

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/D;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l()Law/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    :goto_2b
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    iput-boolean v3, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Z

    goto :goto_b

    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_2b
.end method

.method protected a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/D;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    const-string v0, "search"

    invoke-virtual {p1, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Landroid/app/SearchManager;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_11
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Landroid/app/SearchManager;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/view/MenuItem;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Z

    :cond_c
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Z

    :cond_c
    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Z

    return v0
.end method

.method public g()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l()Law/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_1b
.end method

.method public h()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:I

    iget-boolean v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Z

    if-nez v2, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {}, Laf/d;->a()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v1, :cond_2a

    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2a
    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:I

    goto :goto_7

    :cond_2d
    move v0, v1

    goto :goto_7
.end method

.method public i()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:I

    return-void
.end method

.method public j()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    if-eqz v0, :cond_1c

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Law/g;->a(Landroid/content/Context;Landroid/view/View;Law/f;)V

    :cond_1c
    return-void
.end method

.method protected k()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_11
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_16
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Ljava/lang/String;LaJ/B;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSuggestionClick(I)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v1

    invoke-virtual {v1}, LaV/n;->i()LaV/r;

    move-result-object v2

    if-eqz v2, :cond_2f

    if-ltz p1, :cond_2f

    invoke-virtual {v2}, LaV/r;->d()I

    move-result v3

    if-ge p1, v3, :cond_2f

    invoke-virtual {v2, p1}, LaV/r;->a(I)LaV/q;

    move-result-object v2

    invoke-virtual {v2}, LaV/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, LaV/q;->h()LaJ/B;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Ljava/lang/String;LaJ/B;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2, p1, v0}, LaV/n;->a(III)V

    const-string v0, "s"

    invoke-virtual {v1, v3, v0}, LaV/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method public onSuggestionSelect(I)Z
    .registers 5

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, LaV/n;->a(III)V

    const/4 v0, 0x0

    return v0
.end method
