.class public Lf/f;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 66
    iput-object p2, p0, Lf/f;->a:Ljava/lang/String;

    .line 67
    iput p3, p0, Lf/f;->b:I

    .line 68
    iput-wide p4, p0, Lf/f;->c:J

    .line 69
    iput-wide p6, p0, Lf/f;->d:J

    .line 70
    iput-wide p8, p0, Lf/f;->e:J

    .line 71
    iput-wide p10, p0, Lf/f;->f:J

    .line 72
    return-void
.end method

.method static synthetic a(Lf/f;)J
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lf/f;->f:J

    return-wide v0
.end method

.method static synthetic b(Lf/f;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lf/f;->b:I

    return v0
.end method

.method static synthetic c(Lf/f;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lf/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lf/f;)J
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lf/f;->e:J

    return-wide v0
.end method

.method static synthetic e(Lf/f;)J
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lf/f;->c:J

    return-wide v0
.end method

.method static synthetic f(Lf/f;)J
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, Lf/f;->d:J

    return-wide v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 76
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 77
    new-instance v1, Lf/g;

    invoke-direct {v1, p0, v0}, Lf/g;-><init>(Lf/f;Ljava/io/InputStream;)V

    return-object v1
.end method
