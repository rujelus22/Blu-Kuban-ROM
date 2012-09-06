.class final Lcom/anddoes/launcher/preference/n;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/n;->a:Lcom/anddoes/launcher/preference/m;

    .line 843
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

    .line 845
    new-instance v0, Lcom/anddoes/launcher/preference/aq;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/n;->a:Lcom/anddoes/launcher/preference/m;

    invoke-static {v1}, Lcom/anddoes/launcher/preference/m;->a(Lcom/anddoes/launcher/preference/m;)Lcom/anddoes/launcher/preference/PreferencesActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/preference/aq;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/aq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 846
    return-void
.end method
