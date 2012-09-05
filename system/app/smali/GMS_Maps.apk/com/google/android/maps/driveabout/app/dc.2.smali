.class Lcom/google/android/maps/driveabout/app/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/db;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/db;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dc;->a:Lcom/google/android/maps/driveabout/app/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    if-gez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dc;->a:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/db;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method
