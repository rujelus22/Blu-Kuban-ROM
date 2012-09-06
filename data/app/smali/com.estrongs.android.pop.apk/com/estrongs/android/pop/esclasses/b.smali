.class public Lcom/estrongs/android/pop/esclasses/b;
.super Landroid/content/res/Resources;


# static fields
.field private static a:Lcom/estrongs/android/pop/esclasses/b;

.field private static b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/b;->a:Lcom/estrongs/android/pop/esclasses/b;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/b;->b:Landroid/content/res/Resources;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object p1, Lcom/estrongs/android/pop/esclasses/b;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/estrongs/android/util/ag;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/ag;-><init>(Ljava/lang/Object;)V

    const-string v1, "getCompatibilityInfo"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v1, Lcom/estrongs/android/util/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/util/ag;-><init>(Ljava/lang/Object;)V

    const-string v2, "setCompatibilityInfo"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/b;
    .registers 3

    const-class v1, Lcom/estrongs/android/pop/esclasses/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/esclasses/b;->a:Lcom/estrongs/android/pop/esclasses/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/esclasses/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/b;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/b;->a:Lcom/estrongs/android/pop/esclasses/b;

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/esclasses/b;->a:Lcom/estrongs/android/pop/esclasses/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v2, "tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_24
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "help_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_38
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/esclasses/b;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/estrongs/android/pop/esclasses/b;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/b;->b:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/b;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_13
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->c(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .registers 5

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/b;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/b;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_38

    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_38
    move p1, v0

    goto :goto_33
.end method
