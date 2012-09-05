.class public abstract Lm/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lm/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lm/b;
    .registers 1

    sget-object v0, Lm/a;->a:Lm/b;

    return-object v0
.end method

.method public static declared-synchronized a(Lm/b;)V
    .registers 3

    const-class v0, Lm/a;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lm/a;->a:Lm/b;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3

    sget-object v0, Lm/a;->a:Lm/b;

    if-eqz v0, :cond_b

    sget-object v0, Lm/a;->a:Lm/b;

    invoke-interface {v0, p0, p1}, Lm/b;->a(Ljava/lang/String;I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
