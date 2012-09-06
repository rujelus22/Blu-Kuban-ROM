.class Lcom/google/android/apps/googlevoice/CallLogService$2;
.super Ljava/lang/Object;
.source "CallLogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallLogService;->storeShadowNumber(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallLogService;

.field final synthetic val$mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallLogService;Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogService$2;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallLogService$2;->val$mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService$2;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    #getter for: Lcom/google/android/apps/googlevoice/CallLogService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallLogService;->access$200(Lcom/google/android/apps/googlevoice/CallLogService;)Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogService$2;->val$mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->addShadowNumberMappingAsync(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    .line 347
    return-void
.end method
