.class public LeC;
.super Ljava/lang/Object;
.source "DocsProviders.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)LanD;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lfd;

    invoke-direct {v0, p0}, Lfd;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
