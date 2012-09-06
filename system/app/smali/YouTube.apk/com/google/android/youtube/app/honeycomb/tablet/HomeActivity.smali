.class public Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;
.super Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;
.source "SourceFile"


# instance fields
.field private m:Lcom/google/android/youtube/app/YouTubeApplication;

.field private n:Lcom/google/android/youtube/app/a;

.field private o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

.field private p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

.field private q:Lcom/google/android/youtube/app/honeycomb/tablet/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_card_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ad;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/k;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/k;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/a;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->q:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    .line 90
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/m;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    .line 92
    const v0, 0x7f0b00ce

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0b00cf

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->q:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f0b00d0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->q:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_83

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->q:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d(Lcom/google/android/youtube/coreicecream/Controller;)V

    .line 107
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 108
    if-nez p1, :cond_99

    .line 112
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 113
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->f()Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b(Landroid/os/Bundle;)V

    .line 120
    :cond_99
    if-eqz v1, :cond_aa

    const-string v0, "com.google.android.youtube.action.search"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->onSearchRequested()Z

    .line 123
    :cond_aa
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->f()Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 166
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 150
    :pswitch_d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->closeOptionsMenu()V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->f()Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    if-ne v1, v2, :cond_2f

    .line 154
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->o:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 156
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->f()Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->p:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    if-ne v1, v2, :cond_c

    .line 157
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    invoke-interface {v1}, Lcom/google/android/youtube/app/a;->a()V

    goto :goto_c

    .line 161
    :pswitch_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->closeOptionsMenu()V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->n:Lcom/google/android/youtube/app/a;

    invoke-interface {v1}, Lcom/google/android/youtube/app/a;->c()V

    goto :goto_c

    .line 148
    nop

    :pswitch_data_4a
    .packed-switch 0x7f080141
        :pswitch_3d
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->m:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()Z

    move-result v3

    .line 141
    const v0, 0x7f080142

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    const v0, 0x7f080141

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v3, :cond_32

    move v0, v1

    :goto_24
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v3, :cond_34

    :goto_2a
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_32
    move v0, v2

    .line 142
    goto :goto_24

    :cond_34
    move v1, v2

    goto :goto_2a
.end method
