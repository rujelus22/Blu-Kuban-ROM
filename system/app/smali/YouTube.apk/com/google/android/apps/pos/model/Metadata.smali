.class public Lcom/google/android/apps/pos/model/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/b;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/b;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/apps/pos/model/GlobalCounts;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/apps/pos/model/GlobalCounts;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/model/Metadata;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    const-class v0, Lcom/google/android/apps/pos/model/GlobalCounts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/GlobalCounts;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->title:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->type:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 117
    instance-of v0, p1, Lcom/google/android/apps/pos/model/Metadata;

    if-eqz v0, :cond_34

    .line 118
    check-cast p1, Lcom/google/android/apps/pos/model/Metadata;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Metadata;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 123
    :goto_31
    return v0

    .line 119
    :cond_32
    const/4 v0, 0x0

    goto :goto_31

    .line 123
    :cond_34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_31
.end method

.method public getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasGlobalCounts()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setGlobalCounts(Lcom/google/android/apps/pos/model/GlobalCounts;)Lcom/google/android/apps/pos/model/Metadata;
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    .line 72
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Metadata;
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Metadata;->title:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Metadata;
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Metadata;->type:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->globalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Metadata;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return-void
.end method
