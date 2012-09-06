.class Lcom/googlex/common/android/AndroidConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/io/Gunzipper$GunzipInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/common/android/AndroidConfig;->setupGzipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlex/common/android/AndroidConfig;


# direct methods
.method constructor <init>(Lcom/googlex/common/android/AndroidConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/common/android/AndroidConfig$1;->this$0:Lcom/googlex/common/android/AndroidConfig;

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
