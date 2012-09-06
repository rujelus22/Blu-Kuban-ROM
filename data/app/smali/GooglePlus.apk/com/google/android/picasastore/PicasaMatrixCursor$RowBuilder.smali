.class public Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "PicasaMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaMatrixCursor;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaMatrixCursor;II)V
    .registers 4
    .parameter
    .parameter "index"
    .parameter "endIndex"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->this$0:Lcom/google/android/picasastore/PicasaMatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->index:I

    .line 196
    iput p3, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->endIndex:I

    .line 197
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;
    .registers 5
    .parameter "columnValue"

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_e

    .line 208
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->this$0:Lcom/google/android/picasastore/PicasaMatrixCursor;

    #getter for: Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaMatrixCursor;->access$000(Lcom/google/android/picasastore/PicasaMatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 213
    return-object p0
.end method
