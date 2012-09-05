.class Lcom/google/android/maps/driveabout/app/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bk;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bl;->a:Lcom/google/android/maps/driveabout/app/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bl;->a:Lcom/google/android/maps/driveabout/app/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->dismiss()V

    return-void
.end method
