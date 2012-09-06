.class LBR;
.super Ljava/lang/Object;
.source "StringTree.java"

# interfaces
.implements LFs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFs",
        "<",
        "LBW",
        "<TNodeOwner;>;",
        "LFr",
        "<",
        "LBW",
        "<TNodeOwner;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LBQ;


# direct methods
.method constructor <init>(LBQ;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, LBR;->a:LBQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LFr;I)LFr;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;I)",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;"
        }
    .end annotation

    .prologue
    .line 378
    return-object p1
.end method

.method public bridge synthetic a(LFr;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, LBR;->a(LFr;I)LFr;

    move-result-object v0

    return-object v0
.end method
