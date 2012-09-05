.class Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;
.super Ljava/lang/Object;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionEvent"
.end annotation


# instance fields
.field public final fromUser:Z

.field public final lastAction:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public position:Lcom/google/android/apps/books/common/Position;

.field public final targetSlot:I


# direct methods
.method public constructor <init>(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    .registers 4
    .parameter "targetSlot"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->targetSlot:I

    .line 320
    iput-boolean p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->fromUser:Z

    .line 321
    iput-object p3, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->lastAction:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 322
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->targetSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->lastAction:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
