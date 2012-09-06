.class Lcom/google/android/maps/driveabout/app/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/en;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/en;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/en;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dD;->d(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Lo/I;Z)V

    .line 781
    return-void
.end method
