.class Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$4;
.super Ljava/lang/Object;
.source "AndroidDependencyResolver.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getTaskScheduler()Lcom/google/android/apps/googlevoice/TaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$4;->this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public schedule(Lcom/googlex/common/task/Task;)V
    .registers 2
    .parameter "task"

    .prologue
    .line 1038
    invoke-virtual {p1}, Lcom/googlex/common/task/Task;->schedule()V

    .line 1039
    return-void
.end method
