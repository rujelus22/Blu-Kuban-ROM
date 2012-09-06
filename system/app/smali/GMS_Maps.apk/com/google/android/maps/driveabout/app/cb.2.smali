.class Lcom/google/android/maps/driveabout/app/cB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 744
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 745
    return-void
.end method
