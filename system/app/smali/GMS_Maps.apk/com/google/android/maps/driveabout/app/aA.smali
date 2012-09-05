.class Lcom/google/android/maps/driveabout/app/aA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aA;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
