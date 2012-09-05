.class Lcom/google/android/apps/plus/network/HttpOperation$1;
.super Ljava/lang/Object;
.source "HttpOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/network/HttpOperation;->startThreaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/network/HttpOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/network/HttpOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpOperation$1;->this$0:Lcom/google/android/apps/plus/network/HttpOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpOperation$1;->this$0:Lcom/google/android/apps/plus/network/HttpOperation;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpOperation;->start()V

    .line 262
    return-void
.end method
