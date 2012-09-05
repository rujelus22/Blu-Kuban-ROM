.class Lcom/samsung/swift/security/SecurityPreferencesActivity$15;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildNetworkLongPressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 890
    packed-switch p2, :pswitch_data_1a

    .line 898
    :goto_3
    return-void

    .line 893
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$100(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$15;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Network;

    .line 894
    .local v0, network:Lcom/samsung/swift/security/Network;
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityManager;->remove(Lcom/samsung/swift/security/Network;)V

    goto :goto_3

    .line 890
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
