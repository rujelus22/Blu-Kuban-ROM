.class Lcom/google/android/maps/driveabout/app/T;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/R;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/R;)V
    .registers 2
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/T;->a:Lcom/google/android/maps/driveabout/app/R;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/T;->a:Lcom/google/android/maps/driveabout/app/R;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/R;->a(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 498
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 500
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 506
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/T;->a:Lcom/google/android/maps/driveabout/app/R;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/R;->c(Ljava/util/ArrayList;)V

    .line 508
    return-void
.end method
