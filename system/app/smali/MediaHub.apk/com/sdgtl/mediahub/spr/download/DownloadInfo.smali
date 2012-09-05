.class public Lcom/sdgtl/mediahub/spr/download/DownloadInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/io/File;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/c;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/download/c;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    iput p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->h:J

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->e:I

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->h:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->k:J

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->e:I

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->g:J

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->h:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->m:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
