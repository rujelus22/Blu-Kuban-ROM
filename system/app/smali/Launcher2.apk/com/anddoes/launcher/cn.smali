.class final Lcom/anddoes/launcher/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/io;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Folder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cn;->a:Lcom/anddoes/launcher/Folder;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/anddoes/launcher/cn;->a:Lcom/anddoes/launcher/Folder;

    iget-object v1, p0, Lcom/anddoes/launcher/cn;->a:Lcom/anddoes/launcher/Folder;

    invoke-static {v1}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/cn;->a:Lcom/anddoes/launcher/Folder;

    invoke-static {v2}, Lcom/anddoes/launcher/Folder;->b(Lcom/anddoes/launcher/Folder;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;[I[I)V

    .line 653
    return-void
.end method
