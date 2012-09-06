.class Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstId:J

.field position:I

.field selectedPositions:Landroid/util/SparseBooleanArray;

.field selectionMode:Z

.field topOffset:I

.field visibleOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2758
    new-instance v0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 2727
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2715
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    .line 2728
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    .line 2729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    .line 2730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->visibleOffset:I

    .line 2731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->topOffset:I

    .line 2732
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    .line 2733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_2f

    :goto_2c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectionMode:Z

    .line 2734
    return-void

    .line 2733
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/ColumnGridView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2714
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "superState"

    .prologue
    .line 2723
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2715
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    .line 2724
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaggereGridView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectionMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 2738
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2739
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->firstId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2740
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2741
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->visibleOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2742
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->topOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2743
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 2744
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$SavedState;->selectionMode:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    return-void

    .line 2744
    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method
