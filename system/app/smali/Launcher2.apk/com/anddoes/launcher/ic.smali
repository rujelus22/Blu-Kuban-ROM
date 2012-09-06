.class final Lcom/anddoes/launcher/ic;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/LicenseActivity;

.field private b:Lcom/anddoes/launcher/a/g;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/anddoes/launcher/ic;->a:Lcom/anddoes/launcher/LicenseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/LicenseActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ic;-><init>(Lcom/anddoes/launcher/LicenseActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/anddoes/launcher/ic;->b:Lcom/anddoes/launcher/a/g;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/a/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/ic;->a:Lcom/anddoes/launcher/LicenseActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/LicenseActivity;->b(Lcom/anddoes/launcher/LicenseActivity;)V

    iget-object v0, p0, Lcom/anddoes/launcher/ic;->b:Lcom/anddoes/launcher/a/g;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/g;->a()V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/anddoes/launcher/ic;->a:Lcom/anddoes/launcher/LicenseActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/LicenseActivity;->a(Lcom/anddoes/launcher/LicenseActivity;)V

    .line 164
    new-instance v0, Lcom/anddoes/launcher/a/g;

    iget-object v1, p0, Lcom/anddoes/launcher/ic;->a:Lcom/anddoes/launcher/LicenseActivity;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ic;->b:Lcom/anddoes/launcher/a/g;

    .line 165
    return-void
.end method
