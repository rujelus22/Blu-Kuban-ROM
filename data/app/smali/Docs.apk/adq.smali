.class final Ladq;
.super Ljava/lang/Object;
.source "LogContent.java"

# interfaces
.implements Lada;


# instance fields
.field private final a:I

.field private final a:J

.field private final a:Lada;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lada;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ladq;->a:Lada;

    .line 51
    iput-object p2, p0, Ladq;->a:Ljava/lang/String;

    .line 52
    iput-wide p4, p0, Ladq;->a:J

    .line 53
    iput-object p3, p0, Ladq;->b:Ljava/lang/String;

    .line 54
    iput p6, p0, Ladq;->a:I

    .line 55
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Ladq;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Ladq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 58
    new-instance v1, Laev;

    sget-object v0, Lado;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v3, p0, Ladq;->a:I

    invoke-direct {v1, p1, v0, v2, v3}, Laev;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 61
    :try_start_b
    iget-object v0, p0, Ladq;->a:Lada;

    invoke-interface {v0, v1}, Lada;->a(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1b

    .line 64
    invoke-virtual {v1}, Laev;->a()Laet;

    move-result-object v0

    invoke-virtual {v0}, Laet;->close()V

    .line 66
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 67
    return-void

    .line 64
    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Laev;->a()Laet;

    move-result-object v1

    invoke-virtual {v1}, Laet;->close()V

    throw v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ladq;->a:Lada;

    invoke-interface {v0}, Lada;->a()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ladq;->a:Ljava/lang/String;

    return-object v0
.end method
