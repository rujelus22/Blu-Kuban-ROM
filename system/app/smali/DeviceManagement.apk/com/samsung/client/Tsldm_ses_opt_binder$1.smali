.class final Lcom/samsung/client/Tsldm_ses_opt_binder$1;
.super Ljava/lang/Object;
.source "Tsldm_ses_opt_binder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/Tsldm_ses_opt_binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/client/Tsldm_ses_opt_binder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/client/Tsldm_ses_opt_binder;
    .registers 4
    .parameter "in"

    .prologue
    .line 22
    new-instance v0, Lcom/samsung/client/Tsldm_ses_opt_binder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>(Landroid/os/Parcel;Lcom/samsung/client/Tsldm_ses_opt_binder$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/client/Tsldm_ses_opt_binder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/client/Tsldm_ses_opt_binder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/client/Tsldm_ses_opt_binder;
    .registers 3
    .parameter "size"

    .prologue
    .line 26
    new-array v0, p1, [Lcom/samsung/client/Tsldm_ses_opt_binder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/client/Tsldm_ses_opt_binder$1;->newArray(I)[Lcom/samsung/client/Tsldm_ses_opt_binder;

    move-result-object v0

    return-object v0
.end method
