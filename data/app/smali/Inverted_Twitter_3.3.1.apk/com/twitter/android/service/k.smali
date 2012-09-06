.class public final Lcom/twitter/android/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/twitter/android/service/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/service/l;

    invoke-direct {v0}, Lcom/twitter/android/service/l;-><init>()V

    sput-object v0, Lcom/twitter/android/service/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/service/f;->a(Landroid/os/IBinder;)Lcom/twitter/android/service/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/k;->a:Lcom/twitter/android/service/e;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/service/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/service/k;->a:Lcom/twitter/android/service/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/service/k;->a:Lcom/twitter/android/service/e;

    invoke-interface {v0, p1}, Lcom/twitter/android/service/e;->a(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/service/k;->a:Lcom/twitter/android/service/e;

    invoke-interface {v0}, Lcom/twitter/android/service/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
