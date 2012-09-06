.class final Lcom/anddoes/launcher/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/aa;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/anddoes/launcher/aa;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->f()V

    .line 614
    return-void
.end method
