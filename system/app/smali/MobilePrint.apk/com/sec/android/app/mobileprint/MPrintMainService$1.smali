.class Lcom/sec/android/app/mobileprint/MPrintMainService$1;
.super Ljava/lang/Object;
.source "MPrintMainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$200(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    move-result-object v0

    if-nez v0, :cond_1c

    const v0, 0x7f080028

    :goto_f
    invoke-virtual {v2, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void

    .line 129
    :cond_1c
    const v0, 0x7f080029

    goto :goto_f
.end method
