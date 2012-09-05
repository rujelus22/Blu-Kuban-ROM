.class Lcom/google/android/maps/driveabout/app/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aC;

.field final synthetic b:[Lu/b;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/aC;[Lu/b;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aq;->c:Lcom/google/android/maps/driveabout/app/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Lcom/google/android/maps/driveabout/app/aC;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aq;->b:[Lu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->c:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->o()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Lcom/google/android/maps/driveabout/app/aC;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Lcom/google/android/maps/driveabout/app/aC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aq;->b:[Lu/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aC;->a([Lu/b;)V

    :cond_10
    return-void
.end method
