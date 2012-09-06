.class final Lcom/anddoes/launcher/preference/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/ag;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/ah;->a:Lcom/anddoes/launcher/preference/ag;

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 768
    new-instance v0, Lcom/anddoes/launcher/preference/al;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ah;->a:Lcom/anddoes/launcher/preference/ag;

    invoke-static {v1}, Lcom/anddoes/launcher/preference/ag;->a(Lcom/anddoes/launcher/preference/ag;)Lcom/anddoes/launcher/preference/PreferencesActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/preference/al;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 769
    return-void
.end method
