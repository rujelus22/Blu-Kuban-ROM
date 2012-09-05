.class public abstract Llm;
.super Lhj;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lhj;-><init>()V

    .line 37
    iput-object p1, p0, Llm;->g:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;B)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;B)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lhj;-><init>()V

    .line 28
    iput-object p1, p0, Llm;->g:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 109
    :cond_10
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_17

    .line 110
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 113
    :cond_17
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_22

    instance-of v0, p0, Lhg;

    if-nez v0, :cond_22

    .line 114
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 117
    :cond_22
    invoke-static {p0, p1, p2}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lhg;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 91
    :cond_10
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_17

    .line 92
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 95
    :cond_17
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_22

    instance-of v0, p0, Lhg;

    if-nez v0, :cond_22

    .line 96
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 99
    :cond_22
    invoke-static {p0, p1, p2}, Lhg;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lez;Lhs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lez;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation
.end method
