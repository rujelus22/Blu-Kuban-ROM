.class public Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;
.super Lcom/google/googlenav/actionbar/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;


# static fields
.field private static final a:[I

.field public static final b:Landroid/graphics/drawable/ColorDrawable;

.field public static final c:Landroid/graphics/drawable/ColorDrawable;

.field public static final d:Landroid/graphics/drawable/ColorDrawable;

.field public static final e:Landroid/graphics/drawable/ColorDrawable;

.field static final synthetic g:Z


# instance fields
.field protected f:Landroid/app/ActionBar;

.field private h:Landroid/widget/SearchView;

.field private i:Lcom/google/googlenav/ui/v;

.field private j:Landroid/app/SearchManager;

.field private k:Lcom/google/android/maps/MapsActivity;

.field private l:Lcom/google/googlenav/actionbar/b;

.field private m:Landroid/view/MenuItem;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Lag/g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x6700

    .line 53
    const-class v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Z

    .line 62
    new-array v0, v1, [I

    const v1, 0x10102eb

    aput v1, v0, v2

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a:[I

    .line 64
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->c:Landroid/graphics/drawable/ColorDrawable;

    .line 67
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x3400

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Landroid/graphics/drawable/ColorDrawable;

    .line 69
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd6d6d7

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->e:Landroid/graphics/drawable/ColorDrawable;

    return-void

    :cond_3a
    move v0, v2

    .line 53
    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/googlenav/actionbar/a;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/actionbar/b;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lat/B;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aj;->a()Lcom/google/googlenav/ui/view/android/aj;

    move-result-object v0

    if-nez v0, :cond_f

    .line 374
    :cond_e
    :goto_e
    return-void

    .line 340
    :cond_f
    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    .line 343
    if-eqz p2, :cond_27

    .line 348
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v0

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lat/u;->c(Lat/B;)V

    .line 353
    :cond_27
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1}, Lcom/google/googlenav/actionbar/b;->a()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 354
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p1, p2}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 358
    :cond_38
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1, p1}, Lcom/google/googlenav/actionbar/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 360
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1, p1}, Lcom/google/googlenav/actionbar/b;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    .line 362
    if-eqz v0, :cond_64

    .line 363
    new-instance v2, Lcom/google/googlenav/bd;

    invoke-direct {v2, v1}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->b(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    .line 367
    :goto_55
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 371
    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_e

    .line 372
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_e

    :cond_64
    move-object v0, v1

    goto :goto_55
.end method

.method static synthetic b(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method private p()Lag/g;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->q:Lag/g;

    if-nez v0, :cond_b

    .line 494
    new-instance v0, Lcom/google/googlenav/actionbar/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/actionbar/e;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->q:Lag/g;

    .line 510
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->q:Lag/g;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 591
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 593
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_47

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 158
    if-eqz p2, :cond_36

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    if-eqz v0, :cond_36

    .line 165
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_36
    if-eqz p3, :cond_3d

    .line 170
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 180
    :cond_47
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_9

    .line 530
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 476
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 478
    :cond_f
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 258
    :cond_7
    :goto_7
    return-void

    .line 199
    :cond_8
    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Z

    if-nez v0, :cond_14

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_14
    sget-boolean v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->g:Z

    if-nez v0, :cond_20

    if-nez p3, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_20
    iput-object p3, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    .line 203
    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    .line 204
    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    const/16 v1, 0x4f9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 225
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/app/SearchManager;

    invoke-virtual {v2, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 232
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 233
    new-instance v0, Lcom/google/googlenav/actionbar/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/actionbar/d;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-nez v0, :cond_c

    .line 146
    :goto_b
    return-void

    .line 118
    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/v;)V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    const/16 v1, 0x2af

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 127
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p()Lag/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 133
    :goto_36
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 145
    iput-boolean v3, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Z

    goto :goto_b

    .line 130
    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_36
.end method

.method protected a(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Lcom/google/android/maps/MapsActivity;

    .line 184
    iput-object p2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    .line 185
    const-string v0, "search"

    invoke-virtual {p1, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/app/SearchManager;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public a(Lcom/google/googlenav/actionbar/b;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_6

    .line 274
    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    .line 276
    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 263
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 266
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 268
    :cond_11
    return-void
.end method

.method public b(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_1d

    .line 483
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p()Lag/g;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n()Landroid/content/Context;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lag/h;->a(Landroid/app/ActionBar;Landroid/view/View;Landroid/app/ActionBar$LayoutParams;Lag/g;Landroid/content/Context;)V

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 487
    :cond_1d
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->j:Landroid/app/SearchManager;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Lcom/google/googlenav/actionbar/b;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_24

    .line 284
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_15

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 289
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_24

    .line 290
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public e()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->m:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 302
    :cond_9
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_c

    .line 454
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Z

    .line 457
    :cond_c
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_c

    .line 462
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Z

    .line 465
    :cond_c
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o:Z

    return v0
.end method

.method public j()V
    .registers 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_1b

    .line 518
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 519
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p()Lag/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 525
    :cond_1b
    :goto_1b
    return-void

    .line 522
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_1b
.end method

.method public k()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 548
    iget v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p:I

    .line 549
    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i()Z

    move-result v2

    if-nez v2, :cond_a

    .line 565
    :goto_9
    return v0

    .line 552
    :cond_a
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    .line 553
    invoke-virtual {p0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 557
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-nez v2, :cond_23

    if-eqz v1, :cond_2c

    .line 558
    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 559
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    :cond_2c
    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p:I

    goto :goto_9

    :cond_2f
    move v0, v1

    goto :goto_9
.end method

.method public l()V
    .registers 2

    .prologue
    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->p:I

    .line 571
    return-void
.end method

.method public m()V
    .registers 5

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_1c

    .line 576
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lag/h;->a(Landroid/content/Context;Landroid/view/View;Lag/g;)V

    .line 579
    :cond_1c
    return-void
.end method

.method public n()Landroid/content/Context;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->f:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public o()Landroid/content/Context;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->k:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 317
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 319
    :cond_11
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 391
    if-eqz p2, :cond_2e

    .line 392
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->o()LaM/i;

    move-result-object v2

    invoke-static {v1, v2}, LaI/n;->a(Lcom/google/googlenav/ui/wizard/C;LaM/i;)I

    move-result v1

    invoke-virtual {v0, v1}, LaI/o;->e(I)V

    .line 396
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->h:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 402
    :cond_2d
    :goto_2d
    return-void

    .line 400
    :cond_2e
    invoke-virtual {v0}, LaI/o;->j()V

    goto :goto_2d
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 323
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0}, LaI/o;->i()V

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Ljava/lang/String;Lat/B;)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public onSuggestionClick(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 406
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v2

    .line 410
    :try_start_6
    invoke-virtual {v2, p1}, LaI/o;->d(I)LaI/w;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_9} :catch_2e

    move-result-object v3

    .line 416
    invoke-virtual {v3}, LaI/w;->b()Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {v2}, LaI/o;->i()V

    .line 420
    invoke-static {v4}, Laa/b;->i(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5, p1, v1}, LaI/o;->a(III)V

    .line 422
    const-string v1, "s"

    sget-object v5, Lcom/google/googlenav/ag;->c:Lcom/google/googlenav/ag;

    invoke-virtual {v2, v4, v1, v5}, LaI/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 425
    invoke-virtual {v3}, LaI/w;->e()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_31

    .line 427
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->i:Lcom/google/googlenav/ui/v;

    const-string v2, "stars"

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    .line 441
    :cond_2d
    :goto_2d
    return v0

    .line 411
    :catch_2e
    move-exception v0

    move v0, v1

    .line 413
    goto :goto_2d

    .line 431
    :cond_31
    invoke-virtual {v3}, LaI/w;->e()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_40

    .line 433
    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->l:Lcom/google/googlenav/actionbar/b;

    invoke-interface {v1, v3}, Lcom/google/googlenav/actionbar/b;->a(LaI/w;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 439
    :cond_40
    invoke-virtual {v3}, LaI/w;->h()Lat/B;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->a(Ljava/lang/String;Lat/B;)V

    goto :goto_2d
.end method

.method public onSuggestionSelect(I)Z
    .registers 5
    .parameter

    .prologue
    .line 446
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->n:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->i(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, LaI/o;->a(III)V

    .line 448
    const/4 v0, 0x0

    return v0
.end method
