.class public Lcom/google/android/maps/driveabout/app/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/M;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/X;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/M;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->e()Lu/P;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/X;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lu/P;I)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/M;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->c()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V

    goto :goto_1c
.end method
