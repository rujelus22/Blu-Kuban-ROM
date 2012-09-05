.class Lcom/google/android/maps/driveabout/app/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/I;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dO;->a(Lu/I;Z)V

    return-void
.end method
