.class public Lcom/google/android/music/AsyncCursor$EmptyCursor;
.super Landroid/database/AbstractCursor;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyCursor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 625
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 626
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 635
    const/16 v0, 0x7d0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 640
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 655
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 670
    const/4 v0, 0x1

    return v0
.end method
