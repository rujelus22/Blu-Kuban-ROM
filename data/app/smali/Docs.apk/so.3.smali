.class public final Lso;
.super LrL;
.source "NativeDriveAppOpenerOption.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final a:Ljava/security/SecureRandom;

.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lso;->a:Ljava/security/SecureRandom;

    .line 58
    const-string v0, "SHA-256"

    const-string v1, "SHA-1"

    const-string v2, "MD5"

    invoke-static {v0, v1, v2}, LaiA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LaiA;

    move-result-object v0

    sput-object v0, Lso;->a:Ljava/util/List;

    .line 66
    const-string v0, "content://com.google.android.apps.drive/open"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lso;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lss;Landroid/content/ComponentName;Landroid/content/Context;LrN;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p3, p4, p5}, LrL;-><init>(Lss;Landroid/content/Context;LrN;Ljava/lang/String;)V

    .line 123
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lso;->a:Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method private static a(LkR;)Landroid/content/Intent;
    .registers 5
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, LkR;->a()LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, LkR;->i()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, LkR;->g()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.drive.DRIVE_OPEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v3, Lso;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "resourceId"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    return-object v2
.end method

.method private static a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p0, :cond_7

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_8

    .line 95
    :cond_7
    :goto_7
    return-object v0

    .line 88
    :cond_8
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.apps.drive.APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_7

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    const-string v0, "id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(LkR;Landroid/content/Context;LrN;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "Landroid/content/Context;",
            "LrN;",
            ")",
            "Ljava/util/List",
            "<",
            "Lso;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lso;->a(LkR;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 140
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/16 v0, 0x80

    :try_start_30
    invoke-virtual {v6, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 146
    sget v1, LcY;->open_with_native_drive_app_item_subtitle:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v6, v0, v1}, Lss;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Lss;

    move-result-object v1

    .line 148
    invoke-static {v0}, Lso;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 149
    if-eqz v1, :cond_15

    if-eqz v5, :cond_15

    .line 150
    new-instance v0, Lso;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lso;-><init>(Lss;Landroid/content/ComponentName;Landroid/content/Context;LrN;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_50} :catch_51

    goto :goto_15

    .line 153
    :catch_51
    move-exception v0

    .line 154
    const-string v1, "NativeDriveOpener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity doesn\'t actually exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 157
    :cond_6b
    return-object v7
.end method


# virtual methods
.method protected a(LkR;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Lso;->a(LkR;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lso;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    return-object v0
.end method
