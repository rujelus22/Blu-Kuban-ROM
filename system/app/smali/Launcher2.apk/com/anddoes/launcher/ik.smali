.class final Lcom/anddoes/launcher/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ig;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ig;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ik;->a:Lcom/anddoes/launcher/ig;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/anddoes/launcher/ik;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v1}, Lcom/anddoes/launcher/ig;->f(Lcom/anddoes/launcher/ig;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 275
    iget-object v0, p0, Lcom/anddoes/launcher/ik;->a:Lcom/anddoes/launcher/ig;

    iget-object v2, p0, Lcom/anddoes/launcher/ik;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v2}, Lcom/anddoes/launcher/ig;->g(Lcom/anddoes/launcher/ig;)Lcom/anddoes/launcher/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->aP:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/anddoes/launcher/ig;->a(Lcom/anddoes/launcher/ig;Ljava/lang/String;I)V

    .line 276
    return-void

    .line 272
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 273
    iget-object v3, p0, Lcom/anddoes/launcher/ik;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/ig;->c(Lcom/anddoes/launcher/ig;Landroid/net/Uri;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c
.end method
