.class Lcom/samsung/swift/security/SecurityPreferencesActivity$13;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->buildEditNameDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$800(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Connection;

    .line 800
    .local v0, conn:Lcom/samsung/swift/security/Connection;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$13;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/swift/security/Connection;->setName(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Connection;)V

    .line 802
    return-void
.end method
