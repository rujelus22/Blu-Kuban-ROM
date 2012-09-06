.class Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;
.super Ljava/lang/Object;
.source "TranscriptPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/TranscriptPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Highlighter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/TranscriptPlayer;Lcom/google/android/apps/googlevoice/TranscriptPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;-><init>(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$108(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)I

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #getter for: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$100(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #getter for: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$200(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWords()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #getter for: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$300(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)Lcom/google/android/apps/googlevoice/TranscriptView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #getter for: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->currentWordIndex:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$100(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightWordAtIndex(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #calls: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->schedule()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$400(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)V

    .line 146
    :goto_2c
    return-void

    .line 144
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptPlayer$Highlighter;->this$0:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    #getter for: Lcom/google/android/apps/googlevoice/TranscriptPlayer;->view:Lcom/google/android/apps/googlevoice/TranscriptView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->access$300(Lcom/google/android/apps/googlevoice/TranscriptPlayer;)Lcom/google/android/apps/googlevoice/TranscriptView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/TranscriptView;->unHighlight()V

    goto :goto_2c
.end method
