.class final Lcom/anddoes/launcher/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizePagedView;

.field private final synthetic b:Lcom/anddoes/launcher/y;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ab;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/anddoes/launcher/ab;->b:Lcom/anddoes/launcher/y;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 696
    iget-object v0, p0, Lcom/anddoes/launcher/ab;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ab;->b:Lcom/anddoes/launcher/y;

    iget-object v1, v1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    iget-object v2, p0, Lcom/anddoes/launcher/ab;->b:Lcom/anddoes/launcher/y;

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 697
    iget-object v0, p0, Lcom/anddoes/launcher/ab;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/ab;->b:Lcom/anddoes/launcher/y;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/y;)V

    .line 698
    return-void
.end method
