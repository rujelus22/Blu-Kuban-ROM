.class Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment$1;
.super Ljava/lang/Object;
.source "MPrintSettingSplitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->getSettingValues()Z
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;->access$1000(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$PrintSettingsFragment;)Z

    .line 774
    return-void
.end method
