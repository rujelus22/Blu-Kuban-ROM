.class Lcom/samsung/swift/security/SecurityPreferencesActivity$14;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildConnectionLongPressDialog(Ljava/lang/String;)V
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
    .line 840
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 844
    packed-switch p2, :pswitch_data_22

    .line 855
    :goto_3
    return-void

    .line 847
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->val$key:Ljava/lang/String;

    #calls: Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildEditNameDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$900(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;)V

    goto :goto_3

    .line 850
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$800(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$14;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Connection;

    .line 851
    .local v0, conn:Lcom/samsung/swift/security/Connection;
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityManager;->remove(Lcom/samsung/swift/security/Connection;)V

    goto :goto_3

    .line 844
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
