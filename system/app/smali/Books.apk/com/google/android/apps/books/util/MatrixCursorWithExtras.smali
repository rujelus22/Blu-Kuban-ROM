.class public Lcom/google/android/apps/books/util/MatrixCursorWithExtras;
.super Landroid/database/MatrixCursor;
.source "MatrixCursorWithExtras.java"


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/MatrixCursorWithExtras;->mExtras:Landroid/os/Bundle;

    .line 21
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .registers 4
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/MatrixCursorWithExtras;->mExtras:Landroid/os/Bundle;

    .line 26
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/util/MatrixCursorWithExtras;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
