.class public abstract Lz/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final queueIdle()Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lz/c;->a()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_c

    const/4 v0, 0x0

    return v0

    :catch_5
    move-exception v0

    iget-object v1, p0, Lz/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lz/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_c
    move-exception v0

    iget-object v1, p0, Lz/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lz/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
