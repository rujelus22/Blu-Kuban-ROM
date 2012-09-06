.class final Ldbxyzptlk/o/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field final synthetic a:Ldbxyzptlk/o/a;


# direct methods
.method constructor <init>(Ldbxyzptlk/o/a;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Ldbxyzptlk/o/b;->a:Ldbxyzptlk/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3
    .parameter

    .prologue
    .line 252
    const/16 v0, 0xa

    return v0
.end method
