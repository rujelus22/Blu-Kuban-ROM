.class Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

.field private final synthetic val$speechEndPosition:I

.field private final synthetic val$speechStartPosition:I

.field private final synthetic val$waveBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    iput-object p2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$speechStartPosition:I

    iput p4, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$speechEndPosition:I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    const/4 v2, 0x2

    #setter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I
    invoke-static {v1, v2}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$2(Lcom/android/inputmethod/deprecated/voice/RecognitionView;I)V

    .line 172
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$3(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$3(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    .line 173
    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 172
    #calls: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$5(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 175
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 176
    .local v0, buf:Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 178
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    iget v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$speechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;->val$speechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    #calls: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$7(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V

    .line 179
    return-void
.end method
