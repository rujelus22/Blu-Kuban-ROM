.class Lcom/sec/android/app/mobileprint/MPrintMainService$3;
.super Ljava/lang/Object;
.source "MPrintMainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;->responseCancelCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method
