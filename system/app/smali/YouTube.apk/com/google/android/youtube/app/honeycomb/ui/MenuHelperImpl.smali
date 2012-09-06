.class public final Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;
.super Lcom/google/android/youtube/app/ui/ax;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/MenuItem;

.field private d:Landroid/widget/SearchView;

.field private e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field private f:Ljava/lang/String;

.field private final g:Lcom/google/android/youtube/app/honeycomb/ui/k;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/ax;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1d

    .line 61
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/k;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Lcom/google/android/youtube/app/honeycomb/ui/k;

    .line 65
    :goto_15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->h:Ljava/util/List;

    .line 66
    return-void

    .line 63
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Lcom/google/android/youtube/app/honeycomb/ui/k;

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Landroid/widget/SearchView;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b()V

    move v0, v1

    goto :goto_a
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 206
    :cond_11
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 175
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/honeycomb/ui/l;)V
    .registers 3
    .parameter

    .prologue
    .line 265
    const-string v0, "listener can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 178
    if-nez p1, :cond_6

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Ljava/lang/String;

    .line 183
    :goto_5
    return-void

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->f:Ljava/lang/String;

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_a

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 194
    :cond_a
    return-void
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-nez v0, :cond_6

    .line 236
    :cond_5
    :goto_5
    return-void

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Search"

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-eq v0, v1, :cond_5

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_5
.end method

.method public final a(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xe

    const v5, 0x7f080145

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/ax;->a(Landroid/view/Menu;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_16

    .line 73
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 156
    :cond_15
    :goto_15
    return v1

    .line 77
    :cond_16
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    const-string v3, "search"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 81
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/h;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/ui/h;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/i;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/ui/i;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_68

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/ui/j;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/honeycomb/ui/j;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    :cond_68
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_a0

    .line 132
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 136
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_90

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const v3, 0x2000003

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 141
    :cond_90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_15

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    goto/16 :goto_15

    .line 148
    :cond_a0
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Lcom/google/android/youtube/app/honeycomb/ui/k;

    if-eqz v0, :cond_ab

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->g:Lcom/google/android/youtube/app/honeycomb/ui/k;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 151
    :cond_ab
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v4, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v4, :cond_c6

    move v0, v1

    :goto_b4
    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 152
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v3, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-ne v0, v3, :cond_c8

    const/16 v0, 0xa

    :goto_c1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_15

    :cond_c6
    move v0, v2

    .line 151
    goto :goto_b4

    .line 152
    :cond_c8
    const/4 v0, 0x2

    goto :goto_c1
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->e:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    if-eq v0, v1, :cond_1b

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->d:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1b

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 257
    :cond_1b
    return-void
.end method
