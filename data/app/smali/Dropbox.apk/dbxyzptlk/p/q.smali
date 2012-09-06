.class public abstract Ldbxyzptlk/p/q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/D;


# instance fields
.field protected final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected final b:Ldbxyzptlk/o/m;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Ldbxyzptlk/p/q;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 915
    iput-object p2, p0, Ldbxyzptlk/p/q;->b:Ldbxyzptlk/o/m;

    .line 916
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Ldbxyzptlk/p/q;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 925
    return-void
.end method
