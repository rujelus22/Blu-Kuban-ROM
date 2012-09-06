.class final Lcom/anddoes/launcher/lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;

.field private final synthetic b:Lcom/anddoes/launcher/jn;

.field private final synthetic c:J

.field private final synthetic d:I

.field private final synthetic e:Lcom/anddoes/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/jn;JILcom/anddoes/launcher/CellLayout;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    iput-object p2, p0, Lcom/anddoes/launcher/lj;->b:Lcom/anddoes/launcher/jn;

    iput-wide p3, p0, Lcom/anddoes/launcher/lj;->c:J

    iput p5, p0, Lcom/anddoes/launcher/lj;->d:I

    iput-object p6, p0, Lcom/anddoes/launcher/lj;->e:Lcom/anddoes/launcher/CellLayout;

    .line 4004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 4010
    iget-object v0, p0, Lcom/anddoes/launcher/lj;->b:Lcom/anddoes/launcher/jn;

    iget v0, v0, Lcom/anddoes/launcher/jn;->i:I

    sparse-switch v0, :sswitch_data_6a

    .line 4026
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4027
    iget-object v2, p0, Lcom/anddoes/launcher/lj;->b:Lcom/anddoes/launcher/jn;

    iget v2, v2, Lcom/anddoes/launcher/jn;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4026
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4012
    :sswitch_20
    iget-object v0, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    .line 4013
    iget-object v1, p0, Lcom/anddoes/launcher/lj;->b:Lcom/anddoes/launcher/jn;

    check-cast v1, Lcom/anddoes/launcher/jo;

    iget-wide v2, p0, Lcom/anddoes/launcher/lj;->c:J

    .line 4014
    iget v4, p0, Lcom/anddoes/launcher/lj;->d:I

    iget-object v5, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v5}, Lcom/anddoes/launcher/Workspace;->y(Lcom/anddoes/launcher/Workspace;)[I

    move-result-object v5

    const/4 v6, 0x0

    .line 4012
    invoke-virtual/range {v0 .. v6}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/jo;JI[I[I)V

    .line 4029
    :goto_38
    iget-object v0, p0, Lcom/anddoes/launcher/lj;->e:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->s()V

    .line 4030
    return-void

    .line 4017
    :sswitch_3e
    iget-object v0, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    .line 4018
    iget-object v1, p0, Lcom/anddoes/launcher/lj;->b:Lcom/anddoes/launcher/jn;

    iget-object v1, v1, Lcom/anddoes/launcher/jn;->a:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/anddoes/launcher/lj;->c:J

    iget v4, p0, Lcom/anddoes/launcher/lj;->d:I

    .line 4019
    iget-object v5, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v5}, Lcom/anddoes/launcher/Workspace;->y(Lcom/anddoes/launcher/Workspace;)[I

    move-result-object v5

    .line 4017
    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/ComponentName;JI[I)V

    goto :goto_38

    .line 4022
    :sswitch_56
    iget-object v0, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    iget-wide v1, p0, Lcom/anddoes/launcher/lj;->c:J

    .line 4023
    iget v3, p0, Lcom/anddoes/launcher/lj;->d:I

    iget-object v4, p0, Lcom/anddoes/launcher/lj;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v4}, Lcom/anddoes/launcher/Workspace;->y(Lcom/anddoes/launcher/Workspace;)[I

    move-result-object v4

    .line 4022
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->a(JI[I)V

    goto :goto_38

    .line 4010
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_3e
        0x4 -> :sswitch_20
        0x3e9 -> :sswitch_56
    .end sparse-switch
.end method
