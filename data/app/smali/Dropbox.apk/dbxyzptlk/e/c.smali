.class public Ldbxyzptlk/e/c;
.super Ldbxyzptlk/e/e;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/e/g;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Lcom/dropbox/android/filemanager/LocalEntry;

.field private f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Ldbxyzptlk/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/e/e;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 45
    iput-object p2, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 46
    iput-object p3, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, p0}, Ldbxyzptlk/e/c;->a(Ldbxyzptlk/e/g;)V

    .line 48
    return-void
.end method

.method private static a(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 115
    if-nez v1, :cond_8

    .line 124
    :cond_7
    :goto_7
    return-object v0

    .line 118
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldbxyzptlk/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_7

    .line 122
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 123
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7
.end method

.method private static a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v1, v2}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 288
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    :try_start_16
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 291
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 292
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 295
    :cond_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 296
    const-string v3, "URL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 297
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 298
    const/4 v4, -0x1

    if-le v3, v4, :cond_27

    .line 299
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_4a

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_49} :catch_4b

    move-result-object v0

    .line 308
    :cond_4a
    :goto_4a
    return-object v0

    .line 304
    :catch_4b
    move-exception v1

    .line 305
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_4a
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Ldbxyzptlk/e/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x2e

    .line 80
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 81
    if-ne v2, v5, :cond_c

    .line 99
    :cond_b
    :goto_b
    return-object v0

    .line 84
    :cond_c
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_b

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 88
    :goto_1c
    if-ge v0, v2, :cond_2c

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_29

    .line 96
    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 88
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 99
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Set;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    invoke-static {v0}, Ldbxyzptlk/e/c;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 69
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 70
    invoke-static {v0}, Ldbxyzptlk/e/c;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 72
    :cond_3f
    return-object v2
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1}, Ldbxyzptlk/e/c;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 142
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 143
    const-string v1, "http://www.example.com/example"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 151
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4} :catch_11

    .line 159
    :goto_4
    return-void

    .line 152
    :catch_5
    move-exception v0

    .line 153
    const v0, 0x7f090040

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 155
    :catch_11
    move-exception v0

    .line 156
    const v0, 0x7f09006d

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-static {p1}, Ldbxyzptlk/e/c;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 192
    invoke-static {p1}, Ldbxyzptlk/e/c;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_94

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v4, p1}, Ldbxyzptlk/e/c;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_94

    .line 199
    invoke-static {}, Lcom/dropbox/android/util/h;->g()Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "mime"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/android/util/r;->c()V

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/dropbox/android/util/h;->B()Lcom/dropbox/android/util/r;

    move-result-object v6

    const-string v7, "package.name"

    invoke-virtual {v6, v7, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v6, "mime"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v6

    const-string v7, "extension"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->q(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_2f

    :cond_65
    move v0, v2

    .line 211
    :goto_66
    if-nez v0, :cond_6c

    if-nez v3, :cond_6c

    move v0, v1

    .line 246
    :goto_6b
    return v0

    .line 216
    :cond_6c
    if-eqz v3, :cond_8f

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    .line 227
    :goto_75
    new-instance v1, Lcom/dropbox/android/widget/ag;

    const v3, 0x7f09007f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v0, v4}, Lcom/dropbox/android/widget/ag;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 229
    new-instance v0, Ldbxyzptlk/e/d;

    invoke-direct {v0, p1, p0}, Ldbxyzptlk/e/d;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/aj;)V

    .line 245
    invoke-virtual {v1}, Lcom/dropbox/android/widget/ag;->a()V

    move v0, v2

    .line 246
    goto :goto_6b

    .line 224
    :cond_8f
    new-array v0, v2, [Landroid/content/Intent;

    aput-object v4, v0, v1

    goto :goto_75

    :cond_94
    move v0, v1

    goto :goto_66
.end method


# virtual methods
.method public final a(Ljava/io/File;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    if-nez v0, :cond_40

    .line 252
    iget-object v0, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v2, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    const v1, 0x10000003

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f09007f

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_40
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    iget-object v1, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/b;->a(Landroid/content/Intent;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 262
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 263
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/e/c;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_75

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    invoke-static {p2, v1}, Ldbxyzptlk/e/c;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 267
    const-string v0, "view.success"

    iget-object v1, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 283
    :goto_74
    return-void

    .line 269
    :cond_75
    sget-object v0, Ldbxyzptlk/e/c;->d:Ljava/lang/String;

    const-string v1, "Url file didn\'t have url"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 274
    :cond_7d
    iget-object v0, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    if-eqz v0, :cond_8e

    .line 275
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    const-string v1, "CHARACTER_SET"

    iget-object v2, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_8e
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    invoke-static {p2, v0}, Ldbxyzptlk/e/c;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 279
    iget-object v0, p0, Ldbxyzptlk/e/c;->f:Landroid/content/Intent;

    invoke-static {p2, v0}, Ldbxyzptlk/e/c;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 281
    :cond_9b
    const-string v0, "view.success"

    iget-object v1, p0, Ldbxyzptlk/e/c;->e:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_74
.end method
