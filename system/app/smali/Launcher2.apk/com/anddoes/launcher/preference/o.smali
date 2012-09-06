.class final Lcom/anddoes/launcher/preference/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/m;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/m;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/o;->a:Lcom/anddoes/launcher/preference/m;

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 851
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 852
    return-void
.end method
