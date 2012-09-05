.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/utils/n;


# instance fields
.field private final a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

.field private final b:Ljava/io/File;

.field private final c:Landroid/os/FileObserver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/speechstrategy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->c:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->b(Ljava/io/File;)V

    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v1, 0x4

    const-string v2, "Removed external speech strategy: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Ljava/io/File;)V

    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v1, 0x4

    const-string v2, "Loaded external speech strategy: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_17
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1d
    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v2

    move v0, v1

    :goto_2a
    if-lt v0, v3, :cond_3f

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(I)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(I)V

    return-void

    :cond_3d
    move v0, v1

    goto :goto_1d

    :cond_3f
    aget-object v1, v2, v0

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :try_start_53
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const/4 v2, 0x3

    const-string v3, "Created external speech rules directory: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->b:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_6b} :catch_6c

    goto :goto_2c

    :catch_6c
    move-exception v0

    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const-string v3, "Could not create external speech rules directory.\n%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v8, v3, v4}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_7d
    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    const-string v2, "Could not create external speech rules directory: No external storage."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v8, v2, v1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c
.end method

.method public final a(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_7
.end method
