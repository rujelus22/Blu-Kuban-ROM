.class Lcom/estrongs/android/pop/app/ez;
.super Lcom/estrongs/android/widget/ap;


# instance fields
.field a:Ljava/io/File;

.field final synthetic b:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ez;->b:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0, p2}, Lcom/estrongs/android/widget/ap;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ap;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ez;->d:[Ljava/io/File;

    iget v2, p0, Lcom/estrongs/android/pop/app/ez;->c:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ez;->a:Ljava/io/File;

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ez;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ez;->a:Ljava/io/File;

    instance-of v0, v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ez;->a:Ljava/io/File;

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    move-object v0, v1

    goto :goto_3f
.end method
