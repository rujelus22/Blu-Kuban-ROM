.class public abstract Lcom/google/android/youtube/googlemobile/debug/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/debug/c;


# instance fields
.field private a:I

.field private final b:Z

.field private final c:Z

.field private final d:J

.field private e:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/debug/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->a:I

    invoke-static {}, Lcom/google/android/youtube/googlemobile/debug/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->b:Z

    invoke-static {}, Lcom/google/android/youtube/googlemobile/debug/b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->d:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iget v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->a:I

    if-gt v0, p3, :cond_65

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/youtube/googlemobile/debug/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const-string v2, ":EXCEPTION]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_3f

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_66

    move-result-object v0

    :try_start_5b
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_6e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/debug/d;->a(Ljava/lang/String;)V

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    :try_start_67
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/debug/d;->e:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v0
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract a(Ljava/lang/String;)V
.end method
