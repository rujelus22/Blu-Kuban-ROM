.class Lcom/sec/android/app/mobileprint/MPrintMainService$4;
.super Ljava/lang/Object;
.source "MPrintMainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

.field final synthetic val$errorStingID:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->val$errorStingID:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$4;->val$errorStingID:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    return-void
.end method
