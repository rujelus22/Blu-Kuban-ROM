.class public Lcom/estrongs/android/pop/view/a/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6

    const/high16 v3, 0x1000

    const/high16 v2, 0x400

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_1c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "resource/folder"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3d
    const-string v1, "ABSOLUTE_FILE_PATH"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_46
    return-object v0

    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3d

    :cond_50
    const-string v0, "ftp"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "smb"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "resource/folder"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_46

    :cond_7b
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_46

    :cond_9e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_46
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/estrongs/android/pop/view/a/d;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_e

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :cond_24
    move-object v0, v1

    goto :goto_e
.end method

.method public static a(Ljava/io/File;)Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/l;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    return-object v0
.end method

.method public static a()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V
    .registers 7

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-static {p0, v2, v0, v1}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;Ljava/io/File;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/a/l;->a(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/a/l;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;-><init>()V

    iput-object p0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    iput-object p1, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/a/l;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_16
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/a/l;->a(Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;Ljava/io/File;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_28
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2d
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_47

    :goto_3c
    const-string v0, "duplicate"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_14

    :cond_44
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_28

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public static b(Ljava/io/File;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1
.end method
