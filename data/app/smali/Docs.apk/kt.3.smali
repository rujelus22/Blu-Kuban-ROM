.class Lkt;
.super Ljava/lang/Object;
.source "FileCacheStore.java"

# interfaces
.implements Lkq;


# instance fields
.field private final a:Ljava/io/File;

.field private final a:Ljava/lang/String;

.field final synthetic a:Lkr;


# direct methods
.method private constructor <init>(Lkr;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lkt;->a:Lkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lkt;->a:Ljava/lang/String;

    .line 33
    const-string v0, "app"

    const-string v1, ".cache"

    invoke-static {p1}, Lkr;->a(Lkr;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lkt;->a:Ljava/io/File;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lkr;Ljava/lang/String;Lks;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lkt;-><init>(Lkr;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lkt;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lkt;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lkt;->a:Lkr;

    invoke-static {v0}, Lkr;->a(Lkr;)LXP;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lkt;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {v0, p1, v1}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lkt;->a:Ljava/lang/String;

    return-object v0
.end method
