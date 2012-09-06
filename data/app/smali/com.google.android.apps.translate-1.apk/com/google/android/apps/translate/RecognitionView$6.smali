.class Lcom/google/android/apps/translate/RecognitionView$6;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/RecognitionView;

.field final synthetic val$speechEndPosition:I

.field final synthetic val$speechStartPosition:I

.field final synthetic val$waveBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iput-object p2, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$speechStartPosition:I

    iput p4, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$speechEndPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    const/4 v2, 0x2

    #setter for: Lcom/google/android/apps/translate/RecognitionView;->mState:I
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/RecognitionView;->access$002(Lcom/google/android/apps/translate/RecognitionView;I)I

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/translate/RecognitionView;->access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/apps/translate/R$string;->voice_working:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/apps/translate/RecognitionView;->access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/apps/translate/R$string;->cancel:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    #calls: Lcom/google/android/apps/translate/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/translate/RecognitionView;->access$400(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

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

    .line 184
    .local v0, buf:Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$6;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iget v2, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$speechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/apps/translate/RecognitionView$6;->val$speechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    #calls: Lcom/google/android/apps/translate/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/translate/RecognitionView;->access$600(Lcom/google/android/apps/translate/RecognitionView;Ljava/nio/ShortBuffer;II)V

    .line 187
    return-void
.end method
