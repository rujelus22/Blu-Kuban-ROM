.class Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 2

    new-instance v0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
