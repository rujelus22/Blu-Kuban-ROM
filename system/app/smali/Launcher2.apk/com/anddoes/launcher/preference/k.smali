.class final Lcom/anddoes/launcher/preference/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/j;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/k;->a:Lcom/anddoes/launcher/preference/j;

    .line 811
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

    .line 813
    new-instance v0, Lcom/anddoes/launcher/preference/aw;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/k;->a:Lcom/anddoes/launcher/preference/j;

    invoke-static {v1}, Lcom/anddoes/launcher/preference/j;->a(Lcom/anddoes/launcher/preference/j;)Lcom/anddoes/launcher/preference/PreferencesActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/preference/aw;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/aw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 814
    return-void
.end method
