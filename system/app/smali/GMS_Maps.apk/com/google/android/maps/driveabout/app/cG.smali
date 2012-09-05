.class Lcom/google/android/maps/driveabout/app/cG;
.super Ljava/lang/Object;

# interfaces
.implements Lq/G;


# instance fields
.field final synthetic a:Lq/b;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lq/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lq/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->a:Lq/b;

    invoke-virtual {v0}, Lq/b;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cG;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    return-void
.end method
