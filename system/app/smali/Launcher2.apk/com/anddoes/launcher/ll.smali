.class final Lcom/anddoes/launcher/ll;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ll;->a:Lcom/anddoes/launcher/Workspace;

    .line 1230
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/anddoes/launcher/ll;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->g(Lcom/anddoes/launcher/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ll;->a:Lcom/anddoes/launcher/Workspace;

    iget v1, v1, Lcom/anddoes/launcher/Workspace;->ax:I

    iget-object v2, p0, Lcom/anddoes/launcher/ll;->a:Lcom/anddoes/launcher/Workspace;

    iget v2, v2, Lcom/anddoes/launcher/Workspace;->ay:I

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 1233
    return-void
.end method
