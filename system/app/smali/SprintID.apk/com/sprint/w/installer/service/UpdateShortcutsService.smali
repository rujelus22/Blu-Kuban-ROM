.class public Lcom/sprint/w/installer/service/UpdateShortcutsService;
.super Landroid/app/Service;
.source "UpdateShortcutsService.java"


# instance fields
.field log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const-class v0, Lcom/sprint/w/installer/service/UpdateShortcutsService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/service/UpdateShortcutsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->getIntentKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/service/UpdateShortcutsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->updateIDFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getIntentKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "uri"
    .parameter "key"

    .prologue
    .line 180
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, parts:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_20

    aget-object v4, v0, v1

    .line 182
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 183
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 186
    .end local v4           #s:Ljava/lang/String;
    :goto_1c
    return-object v5

    .line 181
    .restart local v4       #s:Ljava/lang/String;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 186
    .end local v4           #s:Ljava/lang/String;
    :cond_20
    const/4 v5, 0x0

    goto :goto_1c
.end method

.method private updateIDFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "uri"
    .parameter "title"
    .parameter "packageName"

    .prologue
    .line 158
    if-nez p1, :cond_3

    .line 177
    :goto_2
    return-void

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating ID favs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------------: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "intent"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p2, :cond_48

    .line 169
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_48
    const-string v3, "itemType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v3, "iconPackage"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 173
    const-string v3, "iconResource"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 175
    sget-object v3, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT LIKE \'%component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, i:I
    iget-object v3, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated records: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Checking intent"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 28
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 30
    .local v7, exIntent:Landroid/content/Intent;
    if-eqz v7, :cond_8b

    .line 31
    move-object v8, v7

    .line 32
    .local v8, scIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, scName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Found shortcut intent"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 35
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_2a
    if-eqz v8, :cond_6e

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, uri:Ljava/lang/String;
    :goto_31
    iget-object v0, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut URI: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 41
    const-string v0, "package"

    invoke-direct {p0, v4, v0}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->getIntentKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, packageName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/service/UpdateShortcutsService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut PKG: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 44
    if-nez v3, :cond_70

    .line 45
    invoke-virtual {p0, p3}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->stopSelf(I)V

    .line 153
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    .end local v5           #scName:Ljava/lang/String;
    .end local v8           #scIntent:Landroid/content/Intent;
    :goto_6c
    const/4 v0, 0x2

    return v0

    .line 38
    .restart local v5       #scName:Ljava/lang/String;
    .restart local v8       #scIntent:Landroid/content/Intent;
    :cond_6e
    const/4 v4, 0x0

    goto :goto_31

    .line 47
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #uri:Ljava/lang/String;
    :cond_70
    new-instance v2, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v2}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    .line 48
    .local v2, conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    new-instance v0, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sprint/w/installer/service/UpdateShortcutsService$1;-><init>(Lcom/sprint/w/installer/service/UpdateShortcutsService;Lcom/sprint/w/installer/service/SprintIDServiceConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_6c

    .line 150
    .end local v2           #conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    .end local v5           #scName:Ljava/lang/String;
    .end local v8           #scIntent:Landroid/content/Intent;
    :cond_8b
    invoke-virtual {p0, p3}, Lcom/sprint/w/installer/service/UpdateShortcutsService;->stopSelf(I)V

    goto :goto_6c
.end method
