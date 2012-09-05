.class public Lcom/google/android/apps/books/app/StubScene;
.super Ljava/lang/Object;
.source "StubScene.java"

# interfaces
.implements Lcom/google/android/apps/books/app/BooksActivity$Scene;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeLogMethodName()V
    .registers 6

    .prologue
    .line 21
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 22
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 23
    .local v0, method:Ljava/lang/StackTraceElement;
    const-string v2, "StubScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called stub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method


# virtual methods
.method public acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
    .registers 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 204
    return-void
.end method

.method public addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 187
    return-void
.end method

.method public authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V
    .registers 4
    .parameter "intent"
    .parameter "exception"
    .parameter "requestId"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 127
    return-void
.end method

.method public canStartAboutVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "volumeId"
    .parameter "canonicalUrl"

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public canStartBuyVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "volumeId"
    .parameter "buyUrl"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public exitSearch(Z)V
    .registers 2
    .parameter "returnToPreSearchPosition"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 234
    return-void
.end method

.method public findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public findStaticViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishedPickingAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 160
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public hintHomeLoaded()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 182
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isHomeVisited()Z
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isSettingsVisible()Z
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public moveToHome()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 36
    return-void
.end method

.method public moveToReader(Ljava/lang/String;ZZZ)V
    .registers 5
    .parameter "volumeId"
    .parameter "updateVolumeOverview"
    .parameter "addToMyEBooks"
    .parameter "readerFadeIn"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 42
    return-void
.end method

.method public onExternalStorageException()V
    .registers 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 214
    return-void
.end method

.method public openAuthenticatedUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 122
    return-void
.end method

.method public openInternalUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "title"
    .parameter "url"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 117
    return-void
.end method

.method public pickAccount()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 150
    return-void
.end method

.method public populateReaderActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"
    .parameter "subtitle"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 57
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 47
    return-void
.end method

.method public setActionBarDisplayOptions(I)V
    .registers 2
    .parameter "options"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 224
    return-void
.end method

.method public showConcurrentAccessDeniedDialog(ILjava/lang/String;)V
    .registers 3
    .parameter "maxDevices"
    .parameter "volumeId"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 192
    return-void
.end method

.method public showError(Landroid/os/Bundle;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 72
    return-void
.end method

.method public showExitSearchDialog(Ljava/lang/String;)V
    .registers 2
    .parameter "pageTitle"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 229
    return-void
.end method

.method public showHelp(ZLandroid/os/Bundle;)V
    .registers 3
    .parameter "visible"
    .parameter "arguments"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 67
    return-void
.end method

.method public showHoneycombAccountPicker()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 155
    return-void
.end method

.method public showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "chapterTitle"
    .parameter "pageTitle"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 198
    return-void
.end method

.method public showRemoveContentDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"
    .parameter "title"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 112
    return-void
.end method

.method public showRemoveFromLibraryDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"
    .parameter "title"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 107
    return-void
.end method

.method public showSimpleDialog(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 219
    return-void
.end method

.method public startAboutVolume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"
    .parameter "canonicalUrl"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 82
    return-void
.end method

.method public startBuyVolume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"
    .parameter "buyUrl"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 92
    return-void
.end method

.method public startForcedSync()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 177
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 102
    return-void
.end method

.method public startShare(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "uri"
    .parameter "volumeTitle"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 209
    return-void
.end method

.method public startShop()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 97
    return-void
.end method

.method public updateNightMode()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/app/StubScene;->maybeLogMethodName()V

    .line 52
    return-void
.end method
