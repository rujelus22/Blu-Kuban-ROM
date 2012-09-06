.class public LOP;
.super Ljava/lang/Object;
.source "UploadSharedItemActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/widget/ArrayAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, LOP;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iput-object p2, p0, LOP;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, LOP;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:Lck;

    iget-object v1, p0, LOP;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 464
    iget-object v1, p0, LOP;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iget-object v0, p0, LOP;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object v1, p0, LOP;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iget-object v0, p0, LOP;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 470
    return-void
.end method
