.class public Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

.field public d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

.field public e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dt;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dt;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    const-class v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    const-class v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    const-class v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    return-void
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/common/di;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->b:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->p:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->j:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
