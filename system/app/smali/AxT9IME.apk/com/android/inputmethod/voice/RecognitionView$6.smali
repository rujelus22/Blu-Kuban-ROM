.class Lcom/android/inputmethod/voice/RecognitionView$6;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;

.field final synthetic val$speechEndPosition:I

.field final synthetic val$speechStartPosition:I

.field final synthetic val$waveBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iput-object p2, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$speechStartPosition:I

    iput p4, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$speechEndPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    sget-object v2, Lcom/android/inputmethod/voice/RecognitionView$State;->WORKING:Lcom/android/inputmethod/voice/RecognitionView$State;

    #setter for: Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;
    invoke-static {v1, v2}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;Lcom/android/inputmethod/voice/RecognitionView$State;)Lcom/android/inputmethod/voice/RecognitionView$State;

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    #calls: Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$1200(Lcom/android/inputmethod/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 203
    .local v0, buf:Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    iget v2, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$speechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/inputmethod/voice/RecognitionView$6;->val$speechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    #calls: Lcom/android/inputmethod/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->access$1400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V

    .line 206
    return-void
.end method
