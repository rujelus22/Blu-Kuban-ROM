.class public Lcom/estrongs/android/pop/c/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/InputStream;

.field public d:Ljava/util/Properties;

.field final synthetic e:Lcom/estrongs/android/pop/c/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/c/f;->e:Lcom/estrongs/android/pop/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/c/f;->d:Ljava/util/Properties;

    iput-object p2, p0, Lcom/estrongs/android/pop/c/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/c/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/c/f;->c:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/c/f;->e:Lcom/estrongs/android/pop/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/c/f;->d:Ljava/util/Properties;

    iput-object p2, p0, Lcom/estrongs/android/pop/c/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/c/f;->b:Ljava/lang/String;

    :try_start_10
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/android/pop/c/f;->c:Ljava/io/InputStream;
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/c/f;->d:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
