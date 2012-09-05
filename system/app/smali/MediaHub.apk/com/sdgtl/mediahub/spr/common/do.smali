.class final Lcom/sdgtl/mediahub/spr/common/do;
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0, p1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    return-object v0
.end method
