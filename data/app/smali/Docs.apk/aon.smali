.class final Laon;
.super Ljava/lang/Object;
.source "ConstantFactory.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LaoK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaoK",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LaoK;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoK",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Laon;->a:LaoK;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Laon;->a:LaoK;

    invoke-interface {v0, p1}, LaoK;->a(Laoy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    const-class v0, Laon;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, Laon;->a:LaoK;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
