.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;
.super Ljava/lang/Object;
.source "MPrintSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->getResultIntentData()Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$200(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->finish()V

    .line 127
    return-void
.end method
