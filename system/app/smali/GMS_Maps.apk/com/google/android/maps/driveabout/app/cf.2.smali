.class Lcom/google/android/maps/driveabout/app/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cF;->c:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cF;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/cF;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cF;->c:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cF;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cF;->b:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1344
    return-void
.end method
