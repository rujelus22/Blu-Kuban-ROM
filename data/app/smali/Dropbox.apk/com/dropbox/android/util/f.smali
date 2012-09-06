.class public Lcom/dropbox/android/util/f;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/os/FileObserver;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/dropbox/android/util/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/f;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0xec0

    iput v0, p0, Lcom/dropbox/android/util/f;->d:I

    .line 30
    iput-object p1, p0, Lcom/dropbox/android/util/f;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/util/f;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dropbox/android/util/f;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/util/f;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dropbox/android/util/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/android/util/f;->c:Landroid/os/FileObserver;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/dropbox/android/util/f;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/util/f;->c:Landroid/os/FileObserver;

    .line 87
    :cond_c
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/util/f;->a()V

    .line 43
    if-eqz p1, :cond_33

    .line 45
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_15
    new-instance v1, Lcom/dropbox/android/util/g;

    const/16 v2, 0xec0

    invoke-direct {v1, p0, v0, v2}, Lcom/dropbox/android/util/g;-><init>(Lcom/dropbox/android/util/f;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/dropbox/android/util/f;->c:Landroid/os/FileObserver;

    .line 67
    iget-object v1, p0, Lcom/dropbox/android/util/f;->c:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 71
    iget-object v0, p0, Lcom/dropbox/android/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    :cond_33
    return-void

    .line 47
    :cond_34
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method
