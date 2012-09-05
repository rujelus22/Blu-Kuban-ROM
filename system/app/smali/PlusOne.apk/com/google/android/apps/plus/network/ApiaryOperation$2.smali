.class Lcom/google/android/apps/plus/network/ApiaryOperation$2;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;->startThreaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$2;->this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$2;->this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->restart()V
    invoke-static {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$500(Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    .line 628
    return-void
.end method
