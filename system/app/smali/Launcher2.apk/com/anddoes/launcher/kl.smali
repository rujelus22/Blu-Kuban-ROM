.class public final Lcom/anddoes/launcher/kl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/io;


# instance fields
.field final a:J

.field final b:J

.field final c:J

.field d:Lcom/anddoes/launcher/g;

.field private e:Lcom/anddoes/launcher/CellLayout;

.field private f:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x226

    iput-wide v0, p0, Lcom/anddoes/launcher/kl;->a:J

    .line 22
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/anddoes/launcher/kl;->b:J

    .line 23
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/anddoes/launcher/kl;->c:J

    .line 32
    iput-object p1, p0, Lcom/anddoes/launcher/kl;->f:Lcom/anddoes/launcher/Launcher;

    .line 33
    new-instance v0, Lcom/anddoes/launcher/g;

    invoke-direct {v0}, Lcom/anddoes/launcher/g;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/g;->a(Lcom/anddoes/launcher/io;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/anddoes/launcher/kl;->e:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_1a

    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/kl;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/anddoes/launcher/kl;->e:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 55
    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 56
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->s(I)V

    .line 61
    :cond_19
    :goto_19
    return-void

    .line 59
    :cond_1a
    iget-object v0, p0, Lcom/anddoes/launcher/kl;->f:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->y()Lcom/anddoes/launcher/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/bm;->e()V

    goto :goto_19
.end method

.method public final a(Lcom/anddoes/launcher/CellLayout;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/g;->a()V

    .line 44
    iget-object v2, p0, Lcom/anddoes/launcher/kl;->d:Lcom/anddoes/launcher/g;

    if-nez p1, :cond_11

    const-wide/16 v0, 0x3b6

    :goto_b
    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/g;->a(J)V

    .line 46
    iput-object p1, p0, Lcom/anddoes/launcher/kl;->e:Lcom/anddoes/launcher/CellLayout;

    .line 47
    return-void

    .line 45
    :cond_11
    const-wide/16 v0, 0x226

    goto :goto_b
.end method
