.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$2;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->gotoSettingActivity()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 257
    return-void
.end method
