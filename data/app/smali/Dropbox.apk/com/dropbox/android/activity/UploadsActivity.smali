.class public Lcom/dropbox/android/activity/UploadsActivity;
.super Lcom/dropbox/android/activity/SimpleDropboxBrowser;
.source "panda.py"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private y:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/dropbox/android/activity/UploadsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/UploadsActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;-><init>()V

    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030036

    iget-object v2, p0, Lcom/dropbox/android/activity/UploadsActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/dropbox/android/activity/bY;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bY;-><init>(Lcom/dropbox/android/activity/UploadsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected final a(Lcom/dropbox/android/widget/S;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    if-ne p1, v0, :cond_e

    .line 177
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    .line 178
    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a()V

    .line 185
    :goto_d
    return-void

    .line 179
    :cond_e
    sget-object v0, Lcom/dropbox/android/widget/S;->g:Lcom/dropbox/android/widget/S;

    if-ne p1, v0, :cond_2a

    .line 180
    sget-object v0, Lcom/dropbox/android/provider/f;->g:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/m;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dropbox/android/util/aX;->a(Landroid/app/Activity;Lcom/dropbox/android/taskqueue/m;)V

    goto :goto_d

    .line 183
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Lcom/dropbox/android/widget/S;Landroid/database/Cursor;)V

    goto :goto_d
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 143
    sget-object v0, Lcom/dropbox/android/provider/ZipperedUploadProvider;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const-string v0, "/"

    return-object v0
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->C()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivity;->setProgressBarIndeterminate(Z)V

    .line 137
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o()V

    .line 138
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/dropbox/android/activity/UploadsActivity;->m()V

    .line 89
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->y:Landroid/widget/FrameLayout;

    .line 43
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    new-instance v1, Lcom/dropbox/android/activity/bW;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bW;-><init>(Lcom/dropbox/android/activity/UploadsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/UploadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    new-instance v1, Lcom/dropbox/android/activity/bX;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bX;-><init>(Lcom/dropbox/android/activity/UploadsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(I)V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/dropbox/android/provider/UploadLogProvider;->b(Landroid/content/Context;)V

    .line 111
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onDestroy()V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dropbox/android/activity/UploadsActivity;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/dropbox/android/activity/UploadsActivity;->m()V

    .line 123
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onResume()V

    .line 127
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->l()V

    .line 128
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected final q()I
    .registers 2

    .prologue
    .line 171
    const v0, 0x7f030035

    return v0
.end method

.method protected final s()Landroid/content/Context;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/dropbox/android/activity/UploadsActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
