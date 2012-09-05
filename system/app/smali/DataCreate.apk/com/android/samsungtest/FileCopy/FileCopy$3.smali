.class Lcom/android/samsungtest/FileCopy/FileCopy$3;
.super Ljava/lang/Object;
.source "FileCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FileCopy/FileCopy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FileCopy/FileCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->threadStart()V
    invoke-static {v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$500(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    .line 664
    new-instance v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #getter for: Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoCopyNum:I
    invoke-static {v2}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$600(Lcom/android/samsungtest/FileCopy/FileCopy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #getter for: Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoCopyNum:I
    invoke-static {v3}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$700(Lcom/android/samsungtest/FileCopy/FileCopy;)I

    move-result v3

    iget-object v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #getter for: Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3CopyNum:I
    invoke-static {v4}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$800(Lcom/android/samsungtest/FileCopy/FileCopy;)I

    move-result v4

    iget-object v5, p0, Lcom/android/samsungtest/FileCopy/FileCopy$3;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #getter for: Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemoNum:I
    invoke-static {v5}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$900(Lcom/android/samsungtest/FileCopy/FileCopy;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->start()V

    .line 666
    return-void
.end method
