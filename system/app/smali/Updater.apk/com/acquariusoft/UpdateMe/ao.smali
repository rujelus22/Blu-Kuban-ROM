.class public final Lcom/acquariusoft/UpdateMe/ao;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/util/List;

.field public static d:I

.field public static e:Z

.field public static f:Z

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Lcom/acquariusoft/UpdateMe/b/a;

.field public static o:Lcom/acquariusoft/UpdateMe/b/c;

.field public static p:Lcom/acquariusoft/UpdateMe/b/c;

.field public static q:Lcom/acquariusoft/UpdateMe/b/g;

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Ljava/text/DecimalFormat;

.field public static v:Z

.field public static w:Lcom/acquariusoft/UpdateMe/b/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/UpdateMe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->a:Ljava/lang/String;

    const/4 v0, 0x5

    sput v0, Lcom/acquariusoft/UpdateMe/ao;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    const/16 v0, 0x30

    sput v0, Lcom/acquariusoft/UpdateMe/ao;->d:I

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->e:Z

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update_me/my_script.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->g:Ljava/lang/String;

    const-string v0, "/system/update_me.jpg"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->h:Ljava/lang/String;

    const-string v0, "/system/update_me.png"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->i:Ljava/lang/String;

    const-string v0, "/system/update_me.xml"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->j:Ljava/lang/String;

    const-string v0, "/mnt/sdcard/update_me/update_me.xml"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->k:Ljava/lang/String;

    const-string v0, "http://dl.dropbox.com/u/3681387/update_me_rom_list.xml"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->l:Ljava/lang/String;

    const-string v0, "http://downloads.teamvenum.com/blu_kuban_updater/updater_scripts.aspx"

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->m:Ljava/lang/String;

    sput-object v3, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    sput-object v3, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    sput-object v3, Lcom/acquariusoft/UpdateMe/ao;->p:Lcom/acquariusoft/UpdateMe/b/c;

    sput-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->r:Z

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->s:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->t:Z

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->u:Ljava/text/DecimalFormat;

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->v:Z

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/b/c;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/b/c;-><init>()V

    sput-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_43

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :catch_43
    move-exception v0

    :cond_44
    move-object v0, v6

    goto :goto_31
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v2, v0

    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_17

    return-object v3

    :cond_17
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :try_start_1d
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget v5, Lcom/acquariusoft/UpdateMe/ao;->d:I

    sget v6, Lcom/acquariusoft/UpdateMe/ao;->d:I

    const/4 v7, 0x0

    invoke-static {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v6, Lcom/acquariusoft/UpdateMe/b/e;

    invoke-direct {v6}, Lcom/acquariusoft/UpdateMe/b/e;-><init>()V

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6c

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->h:Z

    :cond_6c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->a:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->b:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->c:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->d:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/acquariusoft/UpdateMe/b/e;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v1, v6, Lcom/acquariusoft/UpdateMe/b/e;->f:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, v6, Lcom/acquariusoft/UpdateMe/b/e;->g:Ljava/lang/String;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v6, Lcom/acquariusoft/UpdateMe/b/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_b5} :catch_ba

    :goto_b5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_10

    :catch_ba
    move-exception v0

    goto :goto_b5
.end method

.method public static a(Landroid/net/Uri;Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mount -o remount,rw /system"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rm "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mount -o remount,r /system"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/ao;->a([Ljava/lang/String;)Z

    return-void
.end method

.method public static a([Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v5, p0

    move v4, v2

    move-object v1, v0

    :goto_5
    if-lt v4, v5, :cond_17

    :try_start_7
    const-string v3, "exit\n"

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_53
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_59

    move-result v0

    if-nez v0, :cond_51

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    aget-object v3, p0, v4

    if-nez v1, :cond_35

    :try_start_1b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_30

    move-result-object v1

    :goto_23
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :cond_35
    :try_start_35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4b} :catch_4c

    goto :goto_2c

    :catch_4c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :cond_51
    move v0, v2

    goto :goto_16

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_57
    move v0, v2

    goto :goto_16

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_57
.end method

.method public static a([Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 14

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cwm_flip_sdcard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_41

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_63

    const-string v0, "echo \'wipe data\' > /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "echo \'wipe cache\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "echo \'wipe dalvik\' >> /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_40
    :goto_40
    const/4 v0, 0x1

    :cond_41
    array-length v7, p0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_45
    if-lt v2, v7, :cond_f2

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24f

    const-string v0, "am start -a EXT_RecoveryInterface -e read_from_prop /sdcard/install.prop\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :goto_53
    const-string v0, "exit\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_256

    const/4 v0, 0x1

    :goto_62
    return v0

    :cond_63
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    const-string v0, "echo \'format(\"/data\");\' > /cache/recovery/extendedcommand\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "echo \'format(\"/cache\");\' >> /cache/recovery/extendedcommand\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "echo \'format(\"/system\");\' >> /cache/recovery/extendedcommand\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_79} :catch_7a

    goto :goto_40

    :catch_7a
    move-exception v0

    const-string v1, "FLASH:"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_62

    :cond_89
    :try_start_89
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo \'factory.reset=true\' > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/install.prop\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo \'wipe.cache=true\' >> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/install.prop\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo \'wipe.dalvik=true\' >> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/install.prop\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_f2
    aget-object v8, p0, v2

    const-string v0, ">"

    if-lez v1, :cond_259

    const-string v0, ">>"

    move-object v3, v0

    :goto_fb
    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_ff} :catch_7a

    const/4 v9, 0x1

    if-ne v0, v9, :cond_179

    :try_start_102
    const-string v0, "sdcard"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_145

    new-instance v0, Ljava/io/File;

    const-string v9, "/mnt/emmc/clockworkmod/.salted_hash"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_121

    new-instance v0, Ljava/io/File;

    const-string v9, "/mnt/emmc/.salted_hash"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_121
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "clockworkmod"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "clockworkmod/.salted_hash"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_145
    const-string v0, "emmc"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_179

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "clockworkmod/.salted_hash"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_165

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_165
    new-instance v0, Ljava/io/File;

    const-string v9, "/mnt/emmc/clockworkmod"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    const-string v9, "/mnt/emmc/clockworkmod/.salted_hash"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_179} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_179} :catch_7a

    :cond_179
    :goto_179
    if-eqz v4, :cond_1cd

    :try_start_17b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v9, "/emmc"

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_189
    const-string v8, "/mnt/emmc"

    const-string v9, "/emmc"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v8, v8, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1dc

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \'install "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\' "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /cache/recovery/openrecoveryscript\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_1ba
    :goto_1ba
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_45

    :catch_1c2
    move-exception v0

    const-string v9, "SALTED_HASH"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    :cond_1cd
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v9, "/sdcard"

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_189

    :cond_1dc
    sget-object v8, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v8, v8, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_206

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \'install_zip(\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\");\' "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /cache/recovery/extendedcommand\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1ba

    :cond_206
    sget-object v8, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v8, v8, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1ba

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \'install"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\' "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/install.prop\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_1ba

    :cond_24f
    const-string v0, "reboot recovery\n"

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_254} :catch_7a

    goto/16 :goto_53

    :cond_256
    const/4 v0, 0x0

    goto/16 :goto_62

    :cond_259
    move-object v3, v0

    goto/16 :goto_fb
.end method
