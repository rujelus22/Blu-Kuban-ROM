.class public Laao;
.super Ljava/lang/Object;
.source "DocListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DocListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DocListView;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Laao;->a:Lcom/google/android/apps/docs/view/DocListView;

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
    .line 266
    iget-object v0, p0, Laao;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Laao;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Lcom/google/android/apps/docs/RoboFragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_18

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 270
    :cond_18
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
    .line 274
    return-void
.end method
