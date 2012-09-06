.class public LrU;
.super Ljava/lang/Object;
.source "DriveAppSetImpl.java"

# interfaces
.implements LrR;


# instance fields
.field private final a:LXh;


# direct methods
.method constructor <init>(LXh;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, LrU;->a:LXh;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LrQ;
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LrU;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, LXg;->a()LrQ;

    move-result-object v0

    .line 52
    return-object v0
.end method
