.class public Lcom/estrongs/android/widget/v;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/v;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/c;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/widget/v;->a(Lcom/estrongs/android/pop/c;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move v7, v1

    :goto_1c
    array-length v0, v6

    if-lt v7, v0, :cond_25

    sget-object v0, Lcom/estrongs/android/a/d;->a:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v8

    :cond_25
    aget-object v4, v6, v7

    iget-object v0, p0, Lcom/estrongs/android/widget/v;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v4, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {p1, v4}, Lcom/estrongs/android/pop/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;

    iget-object v1, p0, Lcom/estrongs/android/widget/v;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, p0, Lcom/estrongs/android/widget/v;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v2, v2, Lcom/estrongs/android/widget/FileBrowserDialog;->b:Lcom/estrongs/android/pop/d/f;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1c
.end method

.method a(Lcom/estrongs/android/pop/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/c;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "smb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/c;->a(Ljava/util/Map;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "ftp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/c;->c(Ljava/util/Map;)V

    goto :goto_b

    :cond_18
    const-string v0, "dropbox"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "kanbox"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_28
    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/c;->b(Ljava/util/Map;)V

    goto :goto_b
.end method
