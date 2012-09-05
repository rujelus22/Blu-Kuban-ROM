.class Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionDisabledPrefeerence;
.super Landroid/preference/Preference;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstructionDisabledPrefeerence"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "ctxt"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionDisabledPrefeerence;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 906
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionDisabledPrefeerence;->setLayoutResource(I)V

    .line 907
    return-void
.end method
