.class public final Lcom/anddoes/launcher/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/anddoes/launcher/io;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/g;->e:Z

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/g;->c:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anddoes/launcher/g;->a:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/g;->e:Z

    .line 56
    return-void
.end method

.method public final a(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    iput-boolean v5, p0, Lcom/anddoes/launcher/g;->e:Z

    .line 46
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/anddoes/launcher/g;->a:J

    .line 47
    iget-boolean v2, p0, Lcom/anddoes/launcher/g;->b:Z

    if-nez v2, :cond_1a

    .line 48
    iget-object v2, p0, Lcom/anddoes/launcher/g;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/anddoes/launcher/g;->a:J

    sub-long v0, v3, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iput-boolean v5, p0, Lcom/anddoes/launcher/g;->b:Z

    .line 51
    :cond_1a
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/io;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anddoes/launcher/g;->d:Lcom/anddoes/launcher/io;

    .line 39
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/anddoes/launcher/g;->e:Z

    return v0
.end method

.method public final run()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 60
    iput-boolean v4, p0, Lcom/anddoes/launcher/g;->b:Z

    .line 61
    iget-wide v0, p0, Lcom/anddoes/launcher/g;->a:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_25

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/anddoes/launcher/g;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_26

    .line 66
    iget-object v2, p0, Lcom/anddoes/launcher/g;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/anddoes/launcher/g;->a:J

    sub-long v0, v3, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/g;->b:Z

    .line 75
    :cond_25
    :goto_25
    return-void

    .line 69
    :cond_26
    iput-boolean v4, p0, Lcom/anddoes/launcher/g;->e:Z

    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/g;->d:Lcom/anddoes/launcher/io;

    if-eqz v0, :cond_25

    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/g;->d:Lcom/anddoes/launcher/io;

    invoke-interface {v0}, Lcom/anddoes/launcher/io;->a()V

    goto :goto_25
.end method
