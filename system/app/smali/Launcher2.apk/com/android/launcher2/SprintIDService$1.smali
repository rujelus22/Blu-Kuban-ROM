.class Lcom/android/launcher2/SprintIDService$1;
.super Lcom/sprint/id/ISprintIDService$Stub;
.source "SprintIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SprintIDService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SprintIDService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SprintIDService;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-direct {p0}, Lcom/sprint/id/ISprintIDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    #calls: Lcom/android/launcher2/SprintIDService;->addItem(Landroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/launcher2/SprintIDService;->access$100(Lcom/android/launcher2/SprintIDService;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public deleteFavoritesByID([I)V
    .registers 12
    .parameter "ids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_23

    .line 78
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v3, :cond_23

    aget v2, v0, v1

    .line 79
    .local v2, id:I
    iget-object v4, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-virtual {v4}, Lcom/android/launcher2/SprintIDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v3           #len$:I
    :cond_23
    return-void
.end method

.method public deleteWidgetsFromHostByID([I)V
    .registers 3
    .parameter "widgetIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    #calls: Lcom/android/launcher2/SprintIDService;->deleteWidgets([I)V
    invoke-static {v0, p1}, Lcom/android/launcher2/SprintIDService;->access$200(Lcom/android/launcher2/SprintIDService;[I)V

    .line 62
    return-void
.end method

.method public getCurrentDesktopContainerItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    #calls: Lcom/android/launcher2/SprintIDService;->getCurrentFavorites()Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/SprintIDService;->access$000(Lcom/android/launcher2/SprintIDService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeScreenCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x5

    return v0
.end method

.method public getLauncherComponentName()Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public notifyAppWidgetReset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "Launcher2.SprintIDService"

    const-string v1, "Notifying notifyAppWidgetReset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-virtual {v0}, Lcom/android/launcher2/SprintIDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 57
    return-void
.end method

.method public notifyFavoritesChanges()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "Launcher2.SprintIDService"

    const-string v1, "Notifying notifyFavoritesChanges()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-virtual {v0}, Lcom/android/launcher2/SprintIDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method public wipeDesktopContainer()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "Launcher2.SprintIDService"

    const-string v1, "Deleting favorites from Desktop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-virtual {v0}, Lcom/android/launcher2/SprintIDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v2, "container != ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "-101"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    const-string v0, "Launcher2.SprintIDService"

    const-string v1, "Notifying widget reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/launcher2/SprintIDService$1;->this$0:Lcom/android/launcher2/SprintIDService;

    invoke-virtual {v0}, Lcom/android/launcher2/SprintIDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 35
    return-void
.end method
