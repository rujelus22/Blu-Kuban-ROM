.class Lcom/google/android/maps/driveabout/app/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/em;->a:Lcom/google/android/maps/driveabout/app/dD;

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
    .line 770
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/em;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/I;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Lo/I;Z)V

    .line 772
    return-void
.end method
