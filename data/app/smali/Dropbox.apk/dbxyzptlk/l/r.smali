.class public final Ldbxyzptlk/l/r;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "panda.py"


# instance fields
.field private final a:Ldbxyzptlk/l/q;

.field private final b:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ldbxyzptlk/l/q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 71
    iput-object p2, p0, Ldbxyzptlk/l/r;->a:Ldbxyzptlk/l/q;

    .line 72
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/r;->b:J

    .line 73
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/l/r;)Ldbxyzptlk/l/q;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Ldbxyzptlk/l/r;->a:Ldbxyzptlk/l/q;

    return-object v0
.end method

.method static synthetic b(Ldbxyzptlk/l/r;)J
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Ldbxyzptlk/l/r;->b:J

    return-wide v0
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Ldbxyzptlk/l/r;->wrappedEntity:Lorg/apache/http/HttpEntity;

    new-instance v1, Ldbxyzptlk/l/s;

    invoke-direct {v1, p0, p1}, Ldbxyzptlk/l/s;-><init>(Ldbxyzptlk/l/r;Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 78
    return-void
.end method
