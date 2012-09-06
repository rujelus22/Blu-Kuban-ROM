.class final Lcom/anddoes/launcher/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/GroupConfigActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/GroupConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/dk;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 280
    return-void
.end method
