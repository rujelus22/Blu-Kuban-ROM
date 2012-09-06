.class public Lcom/googlex/common/io/Gunzipper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Lcom/googlex/common/io/Gunzipper;


# instance fields
.field private implementation:Lcom/googlex/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/googlex/common/io/Gunzipper;

    invoke-direct {v0}, Lcom/googlex/common/io/Gunzipper;-><init>()V

    sput-object v0, Lcom/googlex/common/io/Gunzipper;->instance:Lcom/googlex/common/io/Gunzipper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/googlex/common/io/Gunzipper;->instance:Lcom/googlex/common/io/Gunzipper;

    iget-object v0, v0, Lcom/googlex/common/io/Gunzipper;->implementation:Lcom/googlex/common/io/Gunzipper$GunzipInterface;

    invoke-interface {v0, p0}, Lcom/googlex/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Lcom/googlex/common/io/Gunzipper$GunzipInterface;)V
    .registers 2

    sget-object v0, Lcom/googlex/common/io/Gunzipper;->instance:Lcom/googlex/common/io/Gunzipper;

    iput-object p0, v0, Lcom/googlex/common/io/Gunzipper;->implementation:Lcom/googlex/common/io/Gunzipper$GunzipInterface;

    return-void
.end method
