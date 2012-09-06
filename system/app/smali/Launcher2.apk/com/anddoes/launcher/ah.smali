.class final Lcom/anddoes/launcher/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizeTabHost;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ah;->a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/anddoes/launcher/ah;->a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->b(Lcom/anddoes/launcher/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 265
    iget-object v0, p0, Lcom/anddoes/launcher/ah;->a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->c(Lcom/anddoes/launcher/AppsCustomizeTabHost;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 266
    return-void
.end method
