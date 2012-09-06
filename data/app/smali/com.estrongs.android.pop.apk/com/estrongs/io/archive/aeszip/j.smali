.class Lcom/estrongs/io/archive/aeszip/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/estrongs/io/model/ArchiveEntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/estrongs/io/archive/aeszip/h;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/aeszip/h;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/j;->b:Lcom/estrongs/io/archive/aeszip/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/estrongs/io/archive/aeszip/h;->g:Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/a;->c()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/j;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/io/model/ArchiveEntryFile;
    .registers 3

    new-instance v1, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/j;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/a/a/a/a/i;

    invoke-direct {v1, v0}, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;-><init>(Lde/a/a/a/a/i;)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/j;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/j;->a()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method
