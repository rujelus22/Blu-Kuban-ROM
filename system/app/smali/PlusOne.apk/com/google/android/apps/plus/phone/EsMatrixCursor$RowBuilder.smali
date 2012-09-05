.class public Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "EsMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/EsMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsMatrixCursor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EsMatrixCursor;II)V
    .registers 4
    .parameter
    .parameter "index"
    .parameter "endIndex"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->this$0:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->index:I

    .line 212
    iput p3, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->endIndex:I

    .line 213
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    .registers 5
    .parameter "columnValue"

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_e

    .line 224
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->this$0:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    #getter for: Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->access$000(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 229
    return-object p0
.end method
