.class Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;
.super Ljava/lang/Object;
.source "VideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stack"
.end annotation


# instance fields
.field private emptyPointer:I

.field private mStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoDialog;)V
    .registers 3
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    .line 158
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    .prologue
    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->pop()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    move-result-object v0

    .local v0, dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    if-eqz v0, :cond_a

    .line 206
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->clear()Z

    goto :goto_0

    .line 208
    :cond_a
    return-void
.end method

.method public getCurrentDialog()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    .registers 4

    .prologue
    .line 161
    const-string v0, "VideoDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentDialog - emptyPointer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 163
    const-string v0, "VideoDialog"

    const-string v1, "getCurrentDialog - mStackList is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_2d
    return-object v0

    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    goto :goto_2d
.end method

.method public getDialogByIndex(I)Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    .registers 6
    .parameter "index"

    .prologue
    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    .line 181
    :goto_8
    return-object v0

    .line 176
    :catch_9
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 178
    const-string v2, "VideoDialog"

    const-string v3, "getDialogByIndex() - ArrayIndexOutOfBoundsException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pop()Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    .registers 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 186
    const-string v1, "VideoDialog"

    const-string v2, "pop - mStackList is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    .line 188
    const/4 v0, 0x0

    .line 193
    :goto_13
    return-object v0

    .line 190
    :cond_14
    iget v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;

    .line 192
    .local v0, dialog:Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
    const-string v1, "VideoDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pop - emptyPointer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public push(Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    .line 200
    const-string v0, "VideoDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push emptyPointer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->emptyPointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDialog$Stack;->mStackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
