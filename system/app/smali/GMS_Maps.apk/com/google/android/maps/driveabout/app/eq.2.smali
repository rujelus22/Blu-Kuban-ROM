.class Lcom/google/android/maps/driveabout/app/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eq;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eq;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->b(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eq;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dO;->b(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/google/android/maps/driveabout/app/eS;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    return-void
.end method
