.class public abstract Lcom/estrongs/android/util/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/n;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/m;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/util/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/m;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/util/n;->a:Z

    if-eqz v2, :cond_21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_20
    return v0

    :cond_21
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_20
.end method

.method protected abstract a(Ljava/io/File;)Ljava/lang/String;
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/util/n;->a:Z

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/util/n;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
