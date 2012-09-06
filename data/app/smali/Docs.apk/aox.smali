.class Laox;
.super Ljava/lang/Object;
.source "DelegatingInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Laox;->a:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laox;->a:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is a proxy used to support circular references. The object we\'re proxying is not constructed yet. Please wait until after injection has completed to use this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_c
    :try_start_c
    iget-object v0, p0, Laox;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_11} :catch_21

    move-result-object v0

    return-object v0

    .line 41
    :catch_13
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_1a
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 45
    :catch_21
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
