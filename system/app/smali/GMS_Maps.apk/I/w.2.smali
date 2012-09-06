.class Li/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/e;


# instance fields
.field final synthetic a:Ljava/util/zip/ZipEntry;

.field final synthetic b:Li/v;


# direct methods
.method constructor <init>(Li/v;Ljava/util/zip/ZipEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Li/w;->b:Li/v;

    iput-object p2, p0, Li/w;->a:Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Li/w;->b:Li/v;

    invoke-static {v0}, Li/v;->a(Li/v;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iget-object v1, p0, Li/w;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Li/w;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
