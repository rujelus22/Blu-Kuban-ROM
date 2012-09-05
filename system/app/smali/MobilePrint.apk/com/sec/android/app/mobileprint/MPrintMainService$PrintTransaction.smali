.class Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
.super Ljava/lang/Object;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintTransaction"
.end annotation


# instance fields
.field ID:I

.field PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;ILcom/sec/android/app/mobileprint/MPrintJobItem;)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "printJob"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    .line 72
    iput-object p3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 73
    return-void
.end method
