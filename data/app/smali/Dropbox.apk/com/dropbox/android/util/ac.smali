.class final Lcom/dropbox/android/util/ac;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/util/ac;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/dropbox/android/util/ac;->a:J

    return-wide v0
.end method

.method public final accept(Ljava/io/File;)Z
    .registers 6
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    iget-wide v0, p0, Lcom/dropbox/android/util/ac;->a:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/android/util/ac;->a:J

    .line 92
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_11
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    goto :goto_f
.end method
