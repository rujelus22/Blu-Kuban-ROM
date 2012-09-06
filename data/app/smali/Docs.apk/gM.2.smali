.class public LgM;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, LgM;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iput-object p2, p0, LgM;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 350
    iget-object v0, p0, LgM;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    iget-object v1, p0, LgM;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 351
    const-string v0, "HomeScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clicked on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, LgM;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgP;

    .line 353
    iget-object v1, p0, LgM;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v2, v0, LgP;->a:Lnk;

    iget-object v0, v0, LgP;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lnk;Ljava/lang/String;)V

    .line 354
    return-void
.end method
