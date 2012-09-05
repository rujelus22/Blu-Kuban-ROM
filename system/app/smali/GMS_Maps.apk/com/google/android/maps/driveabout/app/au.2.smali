.class Lcom/google/android/maps/driveabout/app/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cV;

.field final synthetic b:[Lu/P;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/cV;[Lu/P;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/au;->c:Lcom/google/android/maps/driveabout/app/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/cV;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/au;->b:[Lu/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->c:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/cV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/au;->b:[Lu/P;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cV;->a(Lu/P;)V

    return-void
.end method
