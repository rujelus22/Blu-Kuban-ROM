.class Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionPrefeerence;
.super Landroid/preference/Preference;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstructionPrefeerence"
.end annotation


# instance fields
.field mInstructionText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "ctxt"
    .parameter "instruction"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionPrefeerence;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .line 891
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 892
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionPrefeerence;->mInstructionText:Ljava/lang/String;

    .line 893
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionPrefeerence;->setLayoutResource(I)V

    .line 894
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 898
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 899
    const v0, 0x7f080121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$InstructionPrefeerence;->mInstructionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    return-void
.end method
