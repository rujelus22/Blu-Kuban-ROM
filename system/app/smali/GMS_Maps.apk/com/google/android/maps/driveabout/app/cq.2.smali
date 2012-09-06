.class Lcom/google/android/maps/driveabout/app/cQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cP;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cP;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    if-gez p3, :cond_3

    .line 79
    :goto_2
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cQ;->a:Lcom/google/android/maps/driveabout/app/cP;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cP;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method
