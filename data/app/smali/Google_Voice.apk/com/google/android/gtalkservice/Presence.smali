.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/Presence$2;,
        Lcom/google/android/gtalkservice/Presence$Show;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFLINE:Lcom/google/android/gtalkservice/Presence; = null

.field private static final STATUS_MIN_VERSION_FOR_INVISIBILITY:I = 0x2


# instance fields
.field private mAllowInvisibility:Z

.field private mAvailable:Z

.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvisible:Z

.field private mShow:Lcom/google/android/gtalkservice/Presence$Show;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 504
    new-instance v0, Lcom/google/android/gtalkservice/Presence$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 95
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    :goto_49
    invoke-virtual {p0, v1}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 106
    return-void

    :cond_65
    move v0, v2

    .line 92
    goto :goto_21

    :cond_67
    move v0, v2

    .line 94
    goto :goto_2b

    :cond_69
    move v1, v2

    .line 99
    goto :goto_49
.end method

.method public constructor <init>(Lcom/google/android/gtalkservice/Presence;)V
    .registers 3
    .parameter "presence"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    .line 115
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    .line 116
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    .line 117
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    .line 119
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 120
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 121
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 124
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 125
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 126
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V
    .registers 5
    .parameter "available"
    .parameter "show"
    .parameter "status"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 76
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 77
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 81
    return-void
.end method

.method private addToList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 365
    :goto_7
    return v3

    .line 351
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    .line 357
    .end local v1           #s:Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v2

    .line 358
    .local v2, statusMax:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_35

    .line 359
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 362
    :cond_35
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/gtalkservice/Presence;->checkListContentsLength(Ljava/util/List;)Ljava/util/List;

    .line 365
    const/4 v3, 0x1

    goto :goto_7
.end method

.method private checkListContentsLength(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v2

    .line 335
    .local v2, maxListContentsLength:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 337
    .local v1, listLength:I
    if-le v1, v2, :cond_14

    .line 338
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_c
    if-lt v0, v2, :cond_14

    .line 339
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 343
    .end local v0           #i:I
    :cond_14
    return-object p1
.end method

.method private listEqual(Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 463
    .local v0, count1:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 465
    .local v1, count2:I
    if-eq v0, v1, :cond_c

    .line 477
    :cond_b
    :goto_b
    return v5

    .line 469
    :cond_c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v0, :cond_24

    .line 470
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 471
    .local v3, s1:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 472
    .local v4, s2:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 477
    .end local v3           #s1:Ljava/lang/String;
    .end local v4           #s2:Ljava/lang/String;
    :cond_24
    const/4 v5, 0x1

    goto :goto_b
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .registers 5
    .parameter "status"
    .parameter "updateLists"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 305
    if-eqz p2, :cond_11

    .line 307
    sget-object v0, Lcom/google/android/gtalkservice/Presence$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 317
    :cond_11
    :goto_11
    return-void

    .line 309
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_11

    .line 313
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_11

    .line 307
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public allowInvisibility()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    return v0
.end method

.method public clearStatusLists()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 399
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/gtalkservice/Presence;)Z
    .registers 5
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 410
    if-nez p1, :cond_4

    .line 458
    :cond_3
    :goto_3
    return v0

    .line 414
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    iget-boolean v2, p1, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    if-ne v1, v2, :cond_3

    .line 418
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    iget-object v2, p1, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_3

    .line 422
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 423
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    iget-boolean v2, p1, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-ne v1, v2, :cond_3

    .line 434
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    iget v2, p1, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    if-ne v1, v2, :cond_3

    .line 438
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    iget v2, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    if-ne v1, v2, :cond_3

    .line 442
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    iget v2, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    if-ne v1, v2, :cond_3

    .line 446
    iget-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    iget-boolean v2, p1, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    if-ne v1, v2, :cond_3

    .line 450
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->listEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->listEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    const/4 v0, 0x1

    goto :goto_3

    .line 426
    :cond_52
    iget-object v1, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-eqz v1, :cond_1e

    goto :goto_3
.end method

.method public getDefaultStatusList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDndStatusList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getShow()Lcom/google/android/gtalkservice/Presence$Show;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListContentsMax()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    return v0
.end method

.method public getStatusListMax()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    return v0
.end method

.method public getStatusMax()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    return v0
.end method

.method public isInvisible()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    return v0
.end method

.method public printDetails()Ljava/lang/String;
    .registers 8

    .prologue
    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "{ available="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-boolean v5, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 547
    const-string v5, ", show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-nez v5, :cond_73

    const-string v5, ""

    :goto_24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", invisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v5, ", allowInvisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-boolean v5, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    const-string v5, ", default={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, i:I
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    if-eqz v5, :cond_76

    .line 558
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 559
    .local v3, s:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    if-lez v0, :cond_6e

    .line 560
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_6e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_59

    .line 550
    .end local v0           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    :cond_73
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    goto :goto_24

    .line 566
    .restart local v0       #i:I
    :cond_76
    const-string v5, "}, dnd={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    if-eqz v5, :cond_a0

    .line 569
    const/4 v0, 0x0

    .line 570
    iget-object v5, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 571
    .restart local v3       #s:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    if-lez v0, :cond_9b

    .line 572
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_9b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_86

    .line 578
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    :cond_a0
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setAllowInvisibility(Z)V
    .registers 2
    .parameter "allowInvisibility"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    .line 209
    return-void
.end method

.method public setAvailable(Z)V
    .registers 2
    .parameter "available"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 229
    return-void
.end method

.method public setInvisible(Z)Z
    .registers 3
    .parameter "invisible"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 251
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-nez v0, :cond_c

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public setShow(Lcom/google/android/gtalkservice/Presence$Show;)V
    .registers 2
    .parameter "show"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 278
    return-void
.end method

.method public setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V
    .registers 4
    .parameter "show"
    .parameter "status"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;Z)V

    .line 299
    return-void
.end method

.method public setStatusListContentsMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 186
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    .line 187
    return-void
.end method

.method public setStatusListMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    .line 167
    return-void
.end method

.method public setStatusMax(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 518
    const-string v0, "UNAVAILABLE"

    .line 533
    :goto_8
    return-object v0

    .line 521
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 522
    const-string v0, "INVISIBLE"

    goto :goto_8

    .line 527
    :cond_12
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_1b

    .line 528
    const-string v0, "AVAILABLE(x)"

    .local v0, retVal:Ljava/lang/String;
    goto :goto_8

    .line 530
    .end local v0           #retVal:Ljava/lang/String;
    :cond_1b
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retVal:Ljava/lang/String;
    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-eqz v0, :cond_4d

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 498
    return-void

    :cond_49
    move v0, v2

    .line 489
    goto :goto_1e

    :cond_4b
    move v0, v2

    .line 491
    goto :goto_26

    :cond_4d
    move v1, v2

    .line 494
    goto :goto_3b
.end method
