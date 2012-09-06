.class final Lcom/anddoes/launcher/preference/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/s;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/s;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/t;->a:Lcom/anddoes/launcher/preference/s;

    .line 930
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

    .line 932
    new-instance v0, Lcom/anddoes/launcher/preference/at;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/t;->a:Lcom/anddoes/launcher/preference/s;

    invoke-static {v1}, Lcom/anddoes/launcher/preference/s;->a(Lcom/anddoes/launcher/preference/s;)Lcom/anddoes/launcher/preference/PreferencesActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/anddoes/launcher/preference/at;-><init>(Lcom/anddoes/launcher/preference/PreferencesActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/preference/at;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 933
    return-void
.end method
