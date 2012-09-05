.class Ly/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/d;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/de;

.field final synthetic c:Ly/s;


# direct methods
.method constructor <init>(Ly/s;Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V
    .registers 4

    iput-object p1, p0, Ly/u;->c:Ly/s;

    iput-object p2, p0, Ly/u;->a:Ljava/io/File;

    iput-object p3, p0, Ly/u;->b:Lcom/google/android/maps/driveabout/app/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Ly/u;->c:Ly/s;

    iget-object v1, p0, Ly/u;->a:Ljava/io/File;

    iget-object v2, p0, Ly/u;->b:Lcom/google/android/maps/driveabout/app/de;

    invoke-static {v0, v1, v2}, Ly/s;->a(Ly/s;Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V

    return-void
.end method
