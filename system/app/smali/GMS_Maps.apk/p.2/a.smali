.class public LP/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, LP/a;->a:Z

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/c;

    invoke-direct {v1}, LP/c;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/f;

    invoke-direct {v1, p0}, LP/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/b;

    invoke-direct {v1, p0, p1, p2}, LP/b;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public static a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/e;

    invoke-direct {v1, p0}, LP/e;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 116
    sget-boolean v0, LP/a;->a:Z

    if-nez v0, :cond_5

    .line 136
    :goto_4
    return-void

    .line 120
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/d;

    invoke-direct {v1}, LP/d;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/g;

    invoke-direct {v1, p0}, LP/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method static synthetic b(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 15
    sput-boolean p0, LP/a;->a:Z

    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP/h;

    invoke-direct {v1, p0}, LP/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    return-void
.end method
