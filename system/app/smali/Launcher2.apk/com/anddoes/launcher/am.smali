.class final Lcom/anddoes/launcher/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizeTabHost;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/am;->a:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 638
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 639
    return-void
.end method
