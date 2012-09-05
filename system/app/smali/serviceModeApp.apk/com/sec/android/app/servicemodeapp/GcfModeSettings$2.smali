.class Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;
.super Ljava/lang/Object;
.source "GcfModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/GcfModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->mGcfMode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$300(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #getter for: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->bGcfMode:Z
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$200(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)Z

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->GcfModeSet(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$600(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;I)V

    .line 271
    const-string v0, "ril.sms.gcf-mode"

    const-string v1, "Off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1e
    :goto_1e
    return-void

    .line 275
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$2;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    #calls: Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->GcfModeSet(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings;->access$600(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;I)V

    .line 276
    const-string v0, "ril.sms.gcf-mode"

    const-string v1, "On"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
