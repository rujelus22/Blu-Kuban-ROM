.class Lcom/google/android/apps/googlevoice/CallLogService$1;
.super Ljava/lang/Object;
.source "CallLogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallLogService;->startGetAccessNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallLogService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogService$1;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService$1;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    #calls: Lcom/google/android/apps/googlevoice/CallLogService;->onDoneGetAccessNumber()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallLogService;->access$100(Lcom/google/android/apps/googlevoice/CallLogService;)V

    .line 274
    return-void
.end method
