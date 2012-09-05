.class final Lcom/android/bluetooth/opp/BluetoothOppUtility$1;
.super Ljava/lang/Object;
.source "BluetoothOppUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppUtility;->autoImportVCard(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppUtility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppUtility$1;->val$transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 329
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 330
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppUtility$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppUtility$1;->val$transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    .local v0, iv:Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->StartVcardImport()V

    .line 332
    return-void
.end method
