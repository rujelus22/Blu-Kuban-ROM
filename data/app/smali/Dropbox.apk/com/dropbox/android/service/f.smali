.class final Lcom/dropbox/android/service/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Date;

.field private final g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p1, p0, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    .line 1289
    iput-object p2, p0, Lcom/dropbox/android/service/f;->b:Ljava/lang/String;

    .line 1290
    iput-object p3, p0, Lcom/dropbox/android/service/f;->c:Ljava/lang/String;

    .line 1291
    iput-wide p4, p0, Lcom/dropbox/android/service/f;->d:J

    .line 1292
    iput-object p6, p0, Lcom/dropbox/android/service/f;->e:Ljava/lang/String;

    .line 1293
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/dropbox/android/util/ar;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    .line 1294
    iput-object p7, p0, Lcom/dropbox/android/service/f;->g:Landroid/net/Uri;

    .line 1295
    return-void
.end method

.method static synthetic c(Lcom/dropbox/android/service/f;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/dropbox/android/service/f;->g:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/service/f;)Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/service/f;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/dropbox/android/service/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/dropbox/android/service/f;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/dropbox/android/service/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/service/f;)J
    .registers 3
    .parameter

    .prologue
    .line 1276
    iget-wide v0, p0, Lcom/dropbox/android/service/f;->d:J

    return-wide v0
.end method

.method static synthetic h(Lcom/dropbox/android/service/f;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/dropbox/android/service/f;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/service/f;)I
    .registers 5
    .parameter

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    iget-object v1, p1, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 1300
    if-eqz v0, :cond_b

    .line 1316
    :cond_a
    :goto_a
    return v0

    .line 1306
    :cond_b
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p1, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 1307
    if-nez v0, :cond_a

    .line 1314
    iget-object v0, p0, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->q(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1315
    iget-object v1, p1, Lcom/dropbox/android/service/f;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/util/aa;->q(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public final b(Lcom/dropbox/android/service/f;)Z
    .registers 4
    .parameter

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    iget-object v1, p1, Lcom/dropbox/android/service/f;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1276
    check-cast p1, Lcom/dropbox/android/service/f;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/service/f;->a(Lcom/dropbox/android/service/f;)I

    move-result v0

    return v0
.end method
