.class public Lcom/google/android/maps/driveabout/app/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/K;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

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

    .prologue
    .line 818
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/W;

    .line 819
    if-eqz v0, :cond_1c

    .line 820
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 821
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/K;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->g()Lo/P;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/W;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lo/P;I)V

    .line 826
    :cond_1c
    :goto_1c
    return-void

    .line 822
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 823
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/K;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->c()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V

    goto :goto_1c
.end method
