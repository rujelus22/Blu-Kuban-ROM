.class Lcom/google/android/maps/driveabout/app/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:[Lu/b;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;Ljava/util/ArrayList;[Lu/b;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ap;->c:Lcom/google/android/maps/driveabout/app/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ap;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ap;->b:[Lu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ap;->b:[Lu/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ap;->b:[Lu/b;

    aget-object v3, v0, v1

    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v3, v0}, Lu/b;->a(I)Lu/b;

    move-result-object v0

    aput-object v0, v2, v1

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_15
.end method
