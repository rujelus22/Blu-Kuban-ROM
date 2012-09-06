.class final Lcom/anddoes/launcher/kp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/TabConfigActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/TabConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/kp;->a:Lcom/anddoes/launcher/TabConfigActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 180
    return-void
.end method
