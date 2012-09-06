.class final Lcom/anddoes/launcher/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/anddoes/launcher/ActPickerActivity;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/ActPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/ActPickerActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/a;-><init>(Lcom/anddoes/launcher/ActPickerActivity;)V

    return-void
.end method


# virtual methods
.method public final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/anddoes/launcher/a;->a:Ljava/util/List;

    new-instance v1, Lcom/anddoes/launcher/d;

    iget-object v2, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/d;-><init>(Lcom/anddoes/launcher/ActPickerActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ActPickerActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    new-instance v1, Lcom/anddoes/launcher/b;

    iget-object v2, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    iget-object v3, p0, Lcom/anddoes/launcher/a;->a:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/anddoes/launcher/b;-><init>(Lcom/anddoes/launcher/ActPickerActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ActPickerActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public final onPreExecute()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/a;->b:Lcom/anddoes/launcher/ActPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ActPickerActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 44
    return-void
.end method
