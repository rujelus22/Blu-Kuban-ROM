.class public Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDisplayTextResource:I

.field protected mFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 528
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel$1;

    invoke-direct {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel$1;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 491
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mDisplayTextResource:I

    .line 503
    iput-object p2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mFieldList:Ljava/util/ArrayList;

    .line 504
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mFieldList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextResource()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mDisplayTextResource:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 524
    iget v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mDisplayTextResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 526
    return-void
.end method
