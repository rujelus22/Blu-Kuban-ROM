.class Laat;
.super Ljava/lang/Object;
.source "DocListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laas;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Laas;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Laat;->a:Laas;

    iput-boolean p2, p0, Laat;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Laat;->a:Laas;

    iget-object v0, v0, Laas;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Lcom/google/android/apps/docs/RoboFragmentActivity;

    move-result-object v0

    .line 339
    iget-object v1, p0, Laat;->a:Laas;

    iget-object v1, v1, Laas;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v1

    invoke-static {v1, v0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 340
    iget-boolean v1, p0, Laat;->a:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Laat;->a:Laas;

    invoke-static {v1}, Laas;->a(Laas;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 341
    sget v1, LcY;->sync_more_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    :cond_29
    iget-object v0, p0, Laat;->a:Laas;

    iget-object v0, v0, Laas;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0, v2}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;Z)V

    .line 344
    return-void
.end method
