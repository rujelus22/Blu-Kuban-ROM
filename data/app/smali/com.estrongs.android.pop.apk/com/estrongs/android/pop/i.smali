.class public Lcom/estrongs/android/pop/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/i;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-boolean v1, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v1, :cond_15

    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/i;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_26
    if-ge v1, v4, :cond_15

    aget-object v5, v3, v1

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v0, 0x1

    goto :goto_15

    :cond_38
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_15

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method
