.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showPrinterList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->finish()V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$12;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->overridePendingTransition(II)V

    .line 492
    return-void
.end method
