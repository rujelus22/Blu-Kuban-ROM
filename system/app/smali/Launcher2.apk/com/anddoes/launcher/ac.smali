.class final Lcom/anddoes/launcher/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/aq;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizePagedView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizePagedView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ac;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iput p2, p0, Lcom/anddoes/launcher/ac;->b:I

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1239
    :try_start_1
    iget v0, p0, Lcom/anddoes/launcher/ac;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_21

    .line 1242
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/anddoes/launcher/ac;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v0, p1, p2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_16

    .line 1244
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1245
    invoke-virtual {p2, v2}, Lcom/anddoes/launcher/ar;->a(Z)V

    .line 1248
    :cond_15
    return-void

    .line 1243
    :catchall_16
    move-exception v0

    .line 1244
    invoke-virtual {p1}, Lcom/anddoes/launcher/z;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1245
    invoke-virtual {p2, v2}, Lcom/anddoes/launcher/ar;->a(Z)V

    .line 1247
    :cond_20
    throw v0

    :catch_21
    move-exception v0

    goto :goto_7
.end method
