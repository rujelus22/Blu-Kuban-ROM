.class Lcom/sec/android/app/twlauncher/LiveFolderInfo;
.super Lcom/sec/android/app/twlauncher/FolderInfo;
.source "LiveFolderInfo.java"


# instance fields
.field baseIntent:Landroid/content/Intent;

.field displayMode:I

.field filtered:Z

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setOwner(I)V

    .line 49
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 54
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2b

    .line 57
    const-string v0, "intent"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2b
    const-string v0, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v0, "displayMode"

    iget v1, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_55

    .line 63
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_55
    return-void
.end method
