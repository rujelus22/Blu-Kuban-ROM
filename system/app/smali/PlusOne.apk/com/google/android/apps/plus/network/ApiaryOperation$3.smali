.class Lcom/google/android/apps/plus/network/ApiaryOperation$3;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;->onComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;

.field final synthetic val$errorCode:I

.field final synthetic val$fex:Ljava/lang/Exception;

.field final synthetic val$reasonPhrase:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/network/ApiaryOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;

    iput p2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$errorCode:I

    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$reasonPhrase:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$fex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->this$0:Lcom/google/android/apps/plus/network/ApiaryOperation;

    iget v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$errorCode:I

    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$reasonPhrase:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$3;->val$fex:Ljava/lang/Exception;

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->completeOperation(ILjava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$600(Lcom/google/android/apps/plus/network/ApiaryOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 714
    return-void
.end method
