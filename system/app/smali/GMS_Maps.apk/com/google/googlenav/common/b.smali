.class Lcom/google/googlenav/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/Config;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/Config;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/googlenav/common/b;->a:Lcom/google/googlenav/common/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 341
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
