.class public abstract Ljk;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public final a(Lma;)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lmb;->a(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Ljava/lang/reflect/Type;
.end method

.method public final b(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)Z"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract c()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
