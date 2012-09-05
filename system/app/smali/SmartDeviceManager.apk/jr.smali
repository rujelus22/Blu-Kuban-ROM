.class public final Ljr;
.super Ljk;
.source "a"


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field final b:Ljt;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljk;-><init>()V

    .line 26
    iput-object p1, p0, Ljr;->a:Ljava/lang/reflect/Type;

    .line 27
    iput-object p2, p0, Ljr;->b:Ljt;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Ljr;->b:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
