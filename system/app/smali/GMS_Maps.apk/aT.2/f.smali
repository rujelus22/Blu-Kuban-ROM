.class public final LaT/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/ThreadLocal;

.field private static final d:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaT/f;->a:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaT/f;->b:Ljava/lang/Object;

    .line 45
    new-instance v0, LaT/g;

    invoke-direct {v0}, LaT/g;-><init>()V

    sput-object v0, LaT/f;->c:Ljava/lang/ThreadLocal;

    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LaT/f;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 103
    sget-object v0, LaT/f;->c:Ljava/lang/ThreadLocal;

    sget-object v1, LaT/f;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static a([B)V
    .registers 3
    .parameter

    .prologue
    .line 95
    sget-object v0, LaT/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LaT/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_b

    .line 100
    :goto_a
    return-void

    .line 99
    :cond_b
    sget-object v0, LaT/f;->d:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static a(I)[B
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, LaT/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, LaT/f;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_d

    move-object v0, v1

    .line 83
    :goto_c
    return-object v0

    .line 75
    :cond_d
    sget-object v0, LaT/f;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 76
    if-eqz v0, :cond_28

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 78
    if-eqz v0, :cond_28

    array-length v2, v0

    if-lt v2, p0, :cond_28

    .line 79
    sget-object v1, LaT/f;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_c

    :cond_28
    move-object v0, v1

    .line 83
    goto :goto_c
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 113
    sget-object v0, LaT/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 114
    sget-object v0, LaT/f;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 115
    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 28
    sget-object v0, LaT/f;->b:Ljava/lang/Object;

    return-object v0
.end method
