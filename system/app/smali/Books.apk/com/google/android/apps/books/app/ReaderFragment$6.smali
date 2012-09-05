.class Lcom/google/android/apps/books/app/ReaderFragment$6;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->onLoadedVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 732
    return-void
.end method
