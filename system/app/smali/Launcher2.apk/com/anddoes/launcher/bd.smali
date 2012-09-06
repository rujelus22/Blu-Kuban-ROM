.class final Lcom/anddoes/launcher/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bb;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bb;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bd;->a:Lcom/anddoes/launcher/bb;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 154
    return-void
.end method
