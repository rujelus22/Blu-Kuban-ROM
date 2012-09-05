.class Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$2;
.super Ljava/lang/Object;
.source "FileCopy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$2;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1004
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->onFinish()V

    .line 1006
    return-void
.end method
