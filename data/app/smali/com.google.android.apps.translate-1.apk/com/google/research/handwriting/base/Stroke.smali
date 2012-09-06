.class public Lcom/google/research/handwriting/base/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/base/Stroke$Point;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/research/handwriting/base/Stroke$Point;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/research/handwriting/base/Stroke;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final penDown:Z

.field private final points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/research/handwriting/base/Stroke$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    new-instance v0, Lcom/google/research/handwriting/base/Stroke$1;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke$1;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/base/Stroke;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/base/Stroke;-><init>(Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/base/Stroke;-><init>(Z)V

    .line 133
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 134
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "capacity"
    .parameter "penDown"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    .line 114
    iput-boolean p2, p0, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    .line 115
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 138
    .local v0, bools:[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    .line 140
    iget-object v1, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/research/handwriting/base/Stroke$Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/base/Stroke;)V
    .registers 4
    .parameter "other"

    .prologue
    .line 127
    iget-boolean v0, p1, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/base/Stroke;-><init>(Z)V

    .line 128
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "penDown"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    .line 119
    iput-boolean p1, p0, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    .line 120
    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/research/handwriting/base/Stroke$Point;

    invoke-direct {v1, p1, p2}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public addPoint(FFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/research/handwriting/base/Stroke$Point;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public addPoint(FFFF)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "t"
    .parameter "p"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/research/handwriting/base/Stroke$Point;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public addPoint(Lcom/google/research/handwriting/base/Stroke$Point;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/google/research/handwriting/base/Stroke$Point;
    .registers 3
    .parameter "i"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/Stroke$Point;

    return-object v0
.end method

.method public getFirst()Lcom/google/research/handwriting/base/Stroke$Point;
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/Stroke$Point;

    return-object v0
.end method

.method public getLast()Lcom/google/research/handwriting/base/Stroke$Point;
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/Stroke$Point;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPenDown()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/research/handwriting/base/Stroke$Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/research/handwriting/base/Stroke;->penDown:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 151
    iget-object v0, p0, Lcom/google/research/handwriting/base/Stroke;->points:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    return-void
.end method
