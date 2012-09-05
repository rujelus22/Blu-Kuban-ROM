.class public final Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;
.super Lcom/google/android/youtube/app/ui/ao;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/MenuItem;

.field private d:Landroid/widget/SearchView;

.field private e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field private final f:Lcom/google/android/youtube/app/honeycomb/ui/o;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/ao;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    .line 56
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/o;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/ui/o;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Lcom/google/android/youtube/app/honeycomb/ui/o;

    .line 60
    :goto_14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Ljava/util/List;

    .line 61
    return-void

    .line 58
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Lcom/google/android/youtube/app/honeycomb/ui/o;

    goto :goto_14
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Landroid/widget/SearchView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 146
    :cond_11
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 123
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/honeycomb/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 205
    const-string v0, "listener can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_a

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 134
    :cond_a
    return-void
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-nez v0, :cond_6

    .line 176
    :cond_5
    :goto_5
    return-void

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Search"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-eq v0, v1, :cond_5

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_5
.end method

.method public final a(Landroid/view/Menu;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x10

    const v5, 0x7f0900cf

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/ao;->a(Landroid/view/Menu;)Z

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_14

    .line 68
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 117
    :cond_13
    :goto_13
    return v1

    .line 72
    :cond_14
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    const-string v3, "search"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 76
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_52

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/n;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/ui/n;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    :cond_52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_87

    .line 95
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const v3, 0x2000003

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_13

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    goto :goto_13

    .line 109
    :cond_87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Lcom/google/android/youtube/app/honeycomb/ui/o;

    if-eqz v0, :cond_92

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Lcom/google/android/youtube/app/honeycomb/ui/o;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 112
    :cond_92
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v4, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v4, :cond_ad

    move v0, v1

    :goto_9b
    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 113
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_af

    const/16 v0, 0xa

    :goto_a8
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_13

    :cond_ad
    move v0, v2

    .line 112
    goto :goto_9b

    .line 113
    :cond_af
    const/4 v0, 0x2

    goto :goto_a8
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-eq v0, v1, :cond_1b

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1b

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 197
    :cond_1b
    return-void
.end method
