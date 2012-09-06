.class public Lcom/dropbox/android/activity/FavoritesActivity;
.super Lcom/dropbox/android/activity/SimpleDropboxBrowser;
.source "panda.py"


# instance fields
.field private A:Lcom/dropbox/android/service/v;

.field private m:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/Button;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;-><init>()V

    .line 36
    new-instance v0, Lcom/dropbox/android/activity/N;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/N;-><init>(Lcom/dropbox/android/activity/FavoritesActivity;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->z:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/dropbox/android/activity/O;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/O;-><init>(Lcom/dropbox/android/activity/FavoritesActivity;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->A:Lcom/dropbox/android/service/v;

    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->C()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/FavoritesListView;

    .line 177
    const v1, 0x7f0d0035

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/FavoritesListView;->a(Landroid/view/View;)V

    .line 180
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->y:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->y:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/Q;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/Q;-><init>(Lcom/dropbox/android/activity/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/FavoritesActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private m()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 93
    invoke-virtual {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    iget-object v2, p0, Lcom/dropbox/android/activity/FavoritesActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/dropbox/android/activity/P;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/P;-><init>(Lcom/dropbox/android/activity/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected final f()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/android/e;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    const-string v0, "/"

    return-object v0
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->C()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->setProgressBarIndeterminate(Z)V

    .line 121
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o()V

    .line 122
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->m()V

    .line 88
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onContentChanged()V

    .line 113
    invoke-direct {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->E()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->m:Landroid/widget/FrameLayout;

    .line 64
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(I)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 74
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onResume()V

    .line 75
    invoke-static {p0}, Lcom/dropbox/android/filemanager/T;->b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/dropbox/android/provider/s;

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/dropbox/android/provider/s;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V

    .line 78
    invoke-virtual {v1}, Lcom/dropbox/android/provider/s;->start()V

    .line 79
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onStart()V

    .line 158
    invoke-direct {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->m()V

    .line 159
    invoke-direct {p0}, Lcom/dropbox/android/activity/FavoritesActivity;->E()V

    .line 160
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/FavoritesActivity;->A:Lcom/dropbox/android/service/v;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/t;->a(Lcom/dropbox/android/service/v;)V

    .line 161
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 165
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/FavoritesActivity;->A:Lcom/dropbox/android/service/v;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/t;->b(Lcom/dropbox/android/service/v;)V

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/activity/FavoritesActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 167
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onStop()V

    .line 168
    return-void
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method protected final q()I
    .registers 2

    .prologue
    .line 146
    const v0, 0x7f03000b

    return v0
.end method
