.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;
.super Ljava/lang/Object;
.source "CradleHomeSettingsTab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$6;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->removeDialog(I)V

    .line 689
    return-void
.end method
