.class Lcom/google/android/maps/driveabout/app/eg;
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
    .line 1030
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eg;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1033
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eg;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eg;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v1

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/google/android/maps/driveabout/app/eE;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 1036
    return-void
.end method
