.class final Lahh;
.super LagM;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagu",
        "<TK;TV;>.agM;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .registers 2
    .parameter

    .prologue
    .line 4396
    iput-object p1, p0, Lahh;->a:Lagu;

    invoke-direct {p0, p1}, LagM;-><init>(Lagu;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 4400
    invoke-virtual {p0}, Lahh;->a()Lahv;

    move-result-object v0

    invoke-virtual {v0}, Lahv;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
