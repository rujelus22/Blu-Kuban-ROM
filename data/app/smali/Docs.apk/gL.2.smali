.class public LgL;
.super Landroid/widget/ArrayAdapter;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;Landroid/content/Context;IILjava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, LgL;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iput-object p5, p0, LgL;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, LgL;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    iget-object v1, p0, LgL;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 336
    sget v0, LcS;->navigation_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 337
    iget-object v1, p0, LgL;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LgP;

    iget v1, v1, LgP;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    return-object v2
.end method
