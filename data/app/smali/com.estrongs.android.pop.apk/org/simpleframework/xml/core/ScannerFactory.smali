.class Lorg/simpleframework/xml/core/ScannerFactory;
.super Ljava/lang/Object;


# instance fields
.field private final cache:Lorg/simpleframework/xml/core/ScannerCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ScannerCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ScannerCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Scanner;

    if-nez v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/core/Scanner;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Scanner;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ScannerCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method
