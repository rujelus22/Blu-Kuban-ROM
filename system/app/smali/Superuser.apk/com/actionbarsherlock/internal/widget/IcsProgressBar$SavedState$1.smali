.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
    .registers 4

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;
    .registers 3

    new-array v0, p1, [Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState$1;->newArray(I)[Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method
