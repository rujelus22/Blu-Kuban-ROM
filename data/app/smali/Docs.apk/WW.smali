.class public abstract LWW;
.super Ljava/lang/Object;
.source "GellyInjectorStoreBase.java"


# instance fields
.field private final a:LWI;


# direct methods
.method public constructor <init>(LWI;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, LWW;->a:LWI;

    .line 60
    return-void
.end method

.method protected static final bI(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(LWY;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, LWW;->a:LWI;

    invoke-virtual {v0, p1}, LWI;->a(LWY;)V

    .line 81
    return-void
.end method

.method protected final a(Lant;LWZ;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LWZ",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, LWW;->a:LWI;

    invoke-virtual {v0, p1, p2}, LWI;->a(Lant;LWZ;)V

    .line 73
    return-void
.end method

.method protected final a(Ljava/lang/Class;Lany;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lany",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, LWW;->a:LWI;

    invoke-virtual {v0, p1, p2}, LWI;->a(Ljava/lang/Class;Lany;)V

    .line 69
    return-void
.end method
