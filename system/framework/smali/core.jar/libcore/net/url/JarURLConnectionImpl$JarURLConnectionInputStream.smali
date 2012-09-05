.class Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/url/JarURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field final jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Llibcore/net/url/JarURLConnectionImpl;


# direct methods
.method protected constructor <init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "file"

    .prologue
    .line 372
    iput-object p1, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    .line 373
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 374
    iput-object p3, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    .line 375
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 380
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_16

    .line 381
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    const/4 v1, 0x1

    #setter for: Llibcore/net/url/JarURLConnectionImpl;->closed:Z
    invoke-static {v0, v1}, Llibcore/net/url/JarURLConnectionImpl;->access$002(Llibcore/net/url/JarURLConnectionImpl;Z)Z

    .line 382
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 384
    :cond_16
    return-void
.end method
