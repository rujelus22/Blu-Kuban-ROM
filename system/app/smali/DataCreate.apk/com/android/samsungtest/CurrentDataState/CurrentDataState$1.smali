.class Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;
.super Ljava/lang/Object;
.source "CurrentDataState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->startFolderCalculating(Ljava/io/File;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

.field final synthetic val$depth:I

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Ljava/io/File;JI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    iput-object p2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$file:Ljava/io/File;

    iput-wide p3, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$size:J

    iput p5, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$depth:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    #getter for: Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->access$100(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$1;-><init>(Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$file:Ljava/io/File;

    iget-wide v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$size:J

    iget v4, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->val$depth:I

    #calls: Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->calculateUsingSpace(Ljava/io/File;JI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->access$200(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Ljava/io/File;JI)V

    .line 813
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    #getter for: Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->access$100(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$2;-><init>(Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    return-void
.end method
