.class Lcom/estrongs/android/pop/app/cn;
.super Lcom/estrongs/io/a/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-direct {p0}, Lcom/estrongs/io/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cm;->a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ck;->c(Lcom/estrongs/android/pop/app/ck;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cm;->a(Lcom/estrongs/android/pop/app/cm;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/ck;->a:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/zip"

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
