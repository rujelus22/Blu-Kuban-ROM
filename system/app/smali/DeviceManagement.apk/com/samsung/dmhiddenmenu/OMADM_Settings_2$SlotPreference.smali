.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;
.super Landroid/preference/ListPreference;
.source "OMADM_Settings_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;


# direct methods
.method public constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    .line 177
    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 7
    .parameter "positiveResult"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 182
    iget-object v2, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    iget-object v2, v2, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Active_Slot"

    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$SlotPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method
