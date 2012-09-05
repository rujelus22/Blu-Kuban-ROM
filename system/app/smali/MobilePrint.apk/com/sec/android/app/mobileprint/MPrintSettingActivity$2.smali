.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$2;
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
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->preparePrint()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    .line 114
    return-void
.end method
