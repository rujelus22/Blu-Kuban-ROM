.class public Lcom/estrongs/android/pop/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/FileFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/g;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/estrongs/android/pop/f;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/g;->a:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/estrongs/android/pop/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileFilter;

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_29

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    :goto_25
    if-eqz v0, :cond_13

    move v1, v0

    goto :goto_c

    :cond_29
    const/4 v0, 0x0

    goto :goto_25

    :cond_2b
    move v0, v1

    goto :goto_25

    :cond_2d
    move v0, v2

    goto :goto_13
.end method
