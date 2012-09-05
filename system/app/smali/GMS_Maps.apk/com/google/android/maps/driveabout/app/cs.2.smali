.class Lcom/google/android/maps/driveabout/app/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lu/I;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lu/I;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cs;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lu/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cs;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lu/I;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lu/I;Z)V

    return-void
.end method
