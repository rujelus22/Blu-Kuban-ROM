.class Lcom/syncmldstmo/smluiSyncSetting$6;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncSetting;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$6;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$6;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->removeDialog(I)V

    .line 493
    return-void
.end method
