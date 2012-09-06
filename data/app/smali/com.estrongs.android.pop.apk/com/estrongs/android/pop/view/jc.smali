.class Lcom/estrongs/android/pop/view/jc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jb;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jb;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jc;->a:Lcom/estrongs/android/pop/view/jb;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/jc;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/jc;->b:Z

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/estrongs/android/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_17
.end method
