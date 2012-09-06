.class final Lcom/anddoes/launcher/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/aq;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ad;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/ad;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1255
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_22

    move-result v0

    if-eqz v0, :cond_15

    .line 1260
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/ar;->a(Z)V

    .line 1262
    :goto_14
    return-void

    .line 1257
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/anddoes/launcher/ad;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v0, p2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/ar;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_22

    .line 1260
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/ar;->a(Z)V

    goto :goto_14

    :catch_22
    move-exception v0

    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/anddoes/launcher/ar;->a(Z)V

    goto :goto_14

    .line 1259
    :catchall_2b
    move-exception v0

    .line 1260
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/anddoes/launcher/ar;->a(Z)V

    .line 1261
    throw v0
.end method
