.class public LJo;
.super LJI;
.source "Api7DefaultHttpIssuer.java"


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:LJP;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJP;LanD;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJP;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, LJI;-><init>()V

    .line 36
    iput-object p1, p0, LJo;->a:LJP;

    .line 37
    iput-object p2, p0, LJo;->a:LanD;

    .line 38
    return-void
.end method

.method static synthetic a(LJo;)LJP;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LJo;->a:LJP;

    return-object v0
.end method

.method static synthetic a(LJo;)LanD;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LJo;->a:LanD;

    return-object v0
.end method


# virtual methods
.method protected a()LJL;
    .registers 2

    .prologue
    .line 42
    new-instance v0, LJp;

    invoke-direct {v0, p0}, LJp;-><init>(LJo;)V

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, LJl;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    invoke-static {p1}, LJl;->a(Lorg/apache/http/HttpRequest;)V

    .line 66
    return-void
.end method
