.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    .line 423
    return-void
.end method