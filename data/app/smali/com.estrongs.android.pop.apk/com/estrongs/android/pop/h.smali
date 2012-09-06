.class public Lcom/estrongs/android/pop/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/estrongs/android/pop/h;->a:J

    iput-wide p3, p0, Lcom/estrongs/android/pop/h;->b:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 11

    const-wide/16 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return v4

    :cond_19
    iget-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v1, :cond_18

    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->j:J

    :goto_1f
    iget-wide v5, p0, Lcom/estrongs/android/pop/h;->a:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_4d

    iget-wide v5, p0, Lcom/estrongs/android/pop/h;->a:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_47

    move v2, v3

    :goto_2c
    iget-wide v5, p0, Lcom/estrongs/android/pop/h;->b:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4b

    if-eqz v2, :cond_49

    iget-wide v5, p0, Lcom/estrongs/android/pop/h;->b:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_49

    :goto_3a
    move v4, v3

    goto :goto_18

    :cond_3c
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_1f

    :cond_47
    move v2, v4

    goto :goto_2c

    :cond_49
    move v3, v4

    goto :goto_3a

    :cond_4b
    move v3, v2

    goto :goto_3a

    :cond_4d
    move v2, v3

    goto :goto_2c
.end method
