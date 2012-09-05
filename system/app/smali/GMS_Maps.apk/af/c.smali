.class Laf/c;
.super Ljava/lang/Object;

# interfaces
.implements Lak/h;


# instance fields
.field final synthetic a:Laf/b;


# direct methods
.method constructor <init>(Laf/b;)V
    .registers 2

    iput-object p1, p0, Laf/c;->a:Laf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
