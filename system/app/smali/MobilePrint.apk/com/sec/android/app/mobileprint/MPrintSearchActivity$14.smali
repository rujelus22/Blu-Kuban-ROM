.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$14;
.super Landroid/app/ProgressDialog;
.source "MPrintSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->getUsbPrinterAttr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$14;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method
