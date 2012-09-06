.class LJJ;
.super Ljava/lang/Object;
.source "HttpIssuerBase.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field final synthetic a:LJI;


# direct methods
.method constructor <init>(LJI;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, LJJ;->a:LJI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3
    .parameter

    .prologue
    .line 226
    const/16 v0, 0xa

    return v0
.end method
