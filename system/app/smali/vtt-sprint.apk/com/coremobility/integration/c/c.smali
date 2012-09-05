.class public abstract Lcom/coremobility/integration/c/c;
.super Ljava/lang/Object;


# static fields
.field static h:Ljava/util/Vector;

.field static i:Lcom/coremobility/integration/c/d;

.field static j:Ljava/util/Vector;

.field static k:Z

.field static l:I


# instance fields
.field protected m:I

.field protected n:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/integration/c/c;->h:Ljava/util/Vector;

    sput-object v1, Lcom/coremobility/integration/c/c;->i:Lcom/coremobility/integration/c/d;

    sput-object v1, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/integration/c/c;)V
    .registers 4

    const-wide/16 v0, 0x0

    sget v2, Lcom/coremobility/integration/c/c;->l:I

    if-eqz v2, :cond_1e

    cmp-long v2, v0, v0

    if-nez v2, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_e
    iput-wide v0, p0, Lcom/coremobility/integration/c/c;->n:J

    sget-object v1, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    monitor-enter v1

    :try_start_13
    sget-object v0, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    :cond_1e
    invoke-virtual {p0}, Lcom/coremobility/integration/c/c;->a()V

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/coremobility/integration/c/c;->m:I

    return v0
.end method
