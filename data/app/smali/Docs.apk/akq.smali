.class final Lakq;
.super LajW;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lajx",
        "<TK;TV;>.ajW;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .registers 2
    .parameter

    .prologue
    .line 3761
    iput-object p1, p0, Lakq;->a:Lajx;

    invoke-direct {p0, p1}, LajW;-><init>(Lajx;)V

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
    .line 3765
    invoke-virtual {p0}, Lakq;->a()Laky;

    move-result-object v0

    invoke-virtual {v0}, Laky;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
