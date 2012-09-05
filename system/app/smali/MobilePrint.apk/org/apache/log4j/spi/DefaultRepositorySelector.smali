.class public Lorg/apache/log4j/spi/DefaultRepositorySelector;
.super Ljava/lang/Object;
.source "DefaultRepositorySelector.java"

# interfaces
.implements Lorg/apache/log4j/spi/RepositorySelector;


# instance fields
.field final repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 2
    .parameter "repository"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 29
    return-void
.end method


# virtual methods
.method public getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method
