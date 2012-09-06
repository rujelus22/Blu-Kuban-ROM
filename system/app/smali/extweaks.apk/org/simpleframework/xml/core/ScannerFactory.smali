.class Lorg/simpleframework/xml/core/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/core/ScannerCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/simpleframework/xml/core/ScannerCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ScannerCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    .line 47
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .registers 4
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Scanner;

    .line 65
    if-nez v0, :cond_14

    .line 66
    new-instance v0, Lorg/simpleframework/xml/core/Scanner;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Scanner;-><init>(Ljava/lang/Class;)V

    .line 67
    iget-object v1, p0, Lorg/simpleframework/xml/core/ScannerFactory;->cache:Lorg/simpleframework/xml/core/ScannerCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ScannerCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_14
    return-object v0
.end method
