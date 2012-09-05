.class Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment$1;
.super Ljava/lang/Object;
.source "MPrintSettingSplitActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->gotoSelectActivity()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;->access$900(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintDeviceFragment;)V

    .line 618
    const/4 v0, 0x1

    return v0
.end method
