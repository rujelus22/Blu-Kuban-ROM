.class Lcom/google/mobile/googlenav/common/Config$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/googlenav/common/io/Gunzipper$GunzipInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mobile/googlenav/common/Config;->setupGzipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mobile/googlenav/common/Config;


# direct methods
.method constructor <init>(Lcom/google/mobile/googlenav/common/Config;)V
    .registers 2

    iput-object p1, p0, Lcom/google/mobile/googlenav/common/Config$1;->this$0:Lcom/google/mobile/googlenav/common/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
