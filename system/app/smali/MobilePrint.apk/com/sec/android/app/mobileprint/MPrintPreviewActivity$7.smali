.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$7;
.super Landroid/app/ProgressDialog;
.source "MPrintPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$7;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method
