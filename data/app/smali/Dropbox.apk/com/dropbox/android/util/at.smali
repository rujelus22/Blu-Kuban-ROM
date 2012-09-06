.class public Lcom/dropbox/android/util/at;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/media/MediaScannerConnection;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/dropbox/android/util/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/at;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/dropbox/android/util/at;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/dropbox/android/util/at;->d:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/dropbox/android/util/at;->e:Z

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/at;->f:Landroid/content/ContentResolver;

    .line 28
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/dropbox/android/util/at;->b:Landroid/media/MediaScannerConnection;

    .line 29
    iget-object v0, p0, Lcom/dropbox/android/util/at;->b:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 30
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/android/util/at;->b:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/dropbox/android/util/at;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/util/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    if-eqz p2, :cond_4a

    .line 40
    iget-boolean v0, p0, Lcom/dropbox/android/util/at;->e:Z

    if-eqz v0, :cond_57

    .line 41
    sget-object v0, Lcom/dropbox/android/util/at;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/dropbox/android/util/at;->f:Landroid/content/ContentResolver;

    invoke-virtual {v0, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 43
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    .line 44
    sget-object v1, Lcom/dropbox/android/util/at;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting media from MediaStore! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_4a
    :goto_4a
    iget-boolean v0, p0, Lcom/dropbox/android/util/at;->e:Z

    if-eqz v0, :cond_56

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    :cond_56
    return-void

    .line 47
    :cond_57
    sget-object v0, Lcom/dropbox/android/util/at;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media added successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method
