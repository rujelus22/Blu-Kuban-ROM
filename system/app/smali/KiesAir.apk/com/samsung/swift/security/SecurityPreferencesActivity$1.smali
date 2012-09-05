.class Lcom/samsung/swift/security/SecurityPreferencesActivity$1;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, key:Ljava/lang/String;
    const-string v2, "connection_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 241
    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #calls: Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildConnectionLongPressDialog(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$000(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V

    .line 250
    :cond_17
    :goto_17
    const/4 v2, 0x1

    return v2

    .line 242
    :cond_19
    const-string v2, "network_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 244
    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$100(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/security/Network;

    .line 245
    .local v1, net:Lcom/samsung/swift/security/Network;
    invoke-virtual {v1}, Lcom/samsung/swift/security/Network;->isDeletable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 247
    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$1;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #calls: Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildNetworkLongPressDialog(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$200(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V

    goto :goto_17
.end method
