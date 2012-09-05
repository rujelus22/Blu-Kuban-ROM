.class public Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;
.super Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/app/YouTubeApplication;

.field private b:Lcom/google/android/youtube/app/o;

.field private c:Lcom/google/android/youtube/app/honeycomb/tablet/l;

.field private d:Lcom/google/android/youtube/app/honeycomb/tablet/n;

.field private e:Lcom/google/android/youtube/app/honeycomb/tablet/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 37
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
    .line 74
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
    .line 48
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
    .line 63
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
    .line 70
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

    .line 81
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 86
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/ae;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ae;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/l;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/l;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->c:Lcom/google/android/youtube/app/honeycomb/tablet/l;

    .line 88
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/a;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->e:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    .line 89
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/app/honeycomb/tablet/n;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    .line 91
    const v0, 0x7f0a00ab

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->c:Lcom/google/android/youtube/app/honeycomb/tablet/l;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0a00ac

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->e:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0a00ad

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a(ILcom/google/android/youtube/coreicecream/a;Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->e:Lcom/google/android/youtube/app/honeycomb/tablet/a;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Lcom/google/android/youtube/coreicecream/a;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Lcom/google/android/youtube/coreicecream/a;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    if-nez p1, :cond_75

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b()Lcom/google/android/youtube/coreicecream/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b(Landroid/os/Bundle;)V

    .line 111
    :cond_75
    if-eqz v1, :cond_86

    const-string v0, "com.google.android.youtube.action.search"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 112
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->onSearchRequested()Z

    .line 114
    :cond_86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b()Lcom/google/android/youtube/coreicecream/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/tablet/an;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/an;->b(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    .line 157
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 141
    :sswitch_d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->closeOptionsMenu()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b()Lcom/google/android/youtube/coreicecream/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->c:Lcom/google/android/youtube/app/honeycomb/tablet/l;

    if-ne v1, v2, :cond_2f

    .line 145
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->c:Lcom/google/android/youtube/app/honeycomb/tablet/l;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 147
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b()Lcom/google/android/youtube/coreicecream/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->d:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    if-ne v1, v2, :cond_c

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    invoke-interface {v1}, Lcom/google/android/youtube/app/o;->a()V

    goto :goto_c

    .line 152
    :sswitch_3d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->closeOptionsMenu()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 154
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->b:Lcom/google/android/youtube/app/o;

    invoke-interface {v1}, Lcom/google/android/youtube/app/o;->c()V

    goto :goto_c

    .line 139
    nop

    :sswitch_data_4a
    .sparse-switch
        0x7f0900ca -> :sswitch_d
        0x7f0900ce -> :sswitch_3d
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/HomeActivity;->a:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b()Z

    move-result v3

    .line 132
    const v0, 0x7f0900ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    const v0, 0x7f0900ce

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

    .line 134
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_32
    move v0, v2

    .line 133
    goto :goto_24

    :cond_34
    move v1, v2

    goto :goto_2a
.end method
