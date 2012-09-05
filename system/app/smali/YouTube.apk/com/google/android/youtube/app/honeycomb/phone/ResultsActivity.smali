.class public Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/al;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private b:Lcom/google/android/youtube/core/async/ad;

.field private c:Lcom/google/android/youtube/core/client/af;

.field private d:Lcom/google/android/youtube/core/client/ag;

.field private e:Lcom/google/android/youtube/core/e;

.field private f:Lcom/google/android/youtube/app/ui/aj;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/youtube/app/ui/cv;

.field private i:Landroid/provider/SearchRecentSuggestions;

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V
    .registers 7
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_c

    .line 169
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 167
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 165
    :pswitch_data_c
    .packed-switch 0x3fa
        :pswitch_5
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    const-string v0, "yt_results"

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->c:Lcom/google/android/youtube/core/client/af;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->m()Lcom/google/android/youtube/core/client/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->d:Lcom/google/android/youtube/core/client/ag;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->e:Lcom/google/android/youtube/core/e;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->c()Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->b:Lcom/google/android/youtube/core/async/ad;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->f()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->i:Landroid/provider/SearchRecentSuggestions;

    .line 85
    return-void
.end method

.method public final synthetic a(Ljava/lang/Enum;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "TimeFilter"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 93
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->l:Landroid/view/inputmethod/InputMethodManager;

    .line 95
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 97
    const-string v1, "selected_time_filter"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 99
    if-nez v1, :cond_35

    .line 100
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 102
    :cond_35
    const v2, 0x7f04001a

    invoke-static {p0, p0, v1, v0, v2}, Lcom/google/android/youtube/app/ui/aj;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/al;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 106
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/ui/h;

    .line 107
    new-instance v0, Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/plus1/f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/youtube/app/a/x;->b(Landroid/app/Activity;)Lcom/google/android/youtube/app/a/x;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->b:Lcom/google/android/youtube/core/async/ad;

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->c:Lcom/google/android/youtube/core/client/af;

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->d:Lcom/google/android/youtube/core/client/ag;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v12, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->YOUTUBE_SEARCH:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    iget-object v13, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->e:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->h:Lcom/google/android/youtube/app/ui/cv;

    .line 122
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->k:Landroid/view/View;

    .line 124
    invoke-virtual {p0, v14}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v1

    .line 157
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j:Z

    if-nez v2, :cond_12

    .line 158
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 160
    :cond_12
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->l:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 131
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g:Ljava/lang/String;

    .line 132
    const-string v0, "hide_query"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j:Z

    .line 134
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j:Z

    if-nez v0, :cond_3a

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->i:Landroid/provider/SearchRecentSuggestions;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 139
    :cond_3a
    const-string v0, "selected_time_filter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 141
    if-nez v0, :cond_4c

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->f:Lcom/google/android/youtube/app/ui/aj;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aj;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 144
    :cond_4c
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    .line 145
    return-void
.end method
