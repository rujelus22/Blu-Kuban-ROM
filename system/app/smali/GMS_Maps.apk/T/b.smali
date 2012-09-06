.class public abstract Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lt/b;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final queueIdle()Z
    .registers 3

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Lt/b;->a()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_c

    .line 31
    const/4 v0, 0x0

    return v0

    .line 32
    :catch_5
    move-exception v0

    .line 33
    iget-object v1, p0, Lt/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lt/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw v0

    .line 35
    :catch_c
    move-exception v0

    .line 36
    iget-object v1, p0, Lt/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lt/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    throw v0
.end method
