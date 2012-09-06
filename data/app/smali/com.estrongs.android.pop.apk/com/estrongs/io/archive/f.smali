.class public Lcom/estrongs/io/archive/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".zip"

    sput-object v0, Lcom/estrongs/io/archive/f;->a:Ljava/lang/String;

    const-string v0, ".gz"

    sput-object v0, Lcom/estrongs/io/archive/f;->b:Ljava/lang/String;

    const-string v0, ".gzip"

    sput-object v0, Lcom/estrongs/io/archive/f;->c:Ljava/lang/String;

    const-string v0, ".7z"

    sput-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    const-string v0, ".esc"

    sput-object v0, Lcom/estrongs/io/archive/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/estrongs/io/archive/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/estrongs/io/archive/f;->a:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/estrongs/io/archive/f;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/estrongs/io/archive/f;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    sget-object v0, Lcom/estrongs/io/archive/f;->b:Ljava/lang/String;

    goto :goto_a

    :cond_1e
    sget-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    goto :goto_a

    :cond_29
    sget-object v0, Lcom/estrongs/io/archive/f;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/estrongs/io/archive/f;->e:Ljava/lang/String;

    goto :goto_a

    :cond_34
    const-string v0, ""

    goto :goto_a
.end method
