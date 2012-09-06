.class final Lcom/anddoes/launcher/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/LauncherModel;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/gx;->a:Lcom/anddoes/launcher/LauncherModel;

    iput-object p2, p0, Lcom/anddoes/launcher/gx;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/anddoes/launcher/gx;->c:Ljava/util/ArrayList;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/anddoes/launcher/gx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/gx;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 198
    return-void

    .line 192
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 193
    invoke-virtual {v0}, Lcom/anddoes/launcher/ec;->a_()V

    goto :goto_6

    .line 195
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 196
    invoke-virtual {v0}, Lcom/anddoes/launcher/ec;->a_()V

    goto :goto_12
.end method
