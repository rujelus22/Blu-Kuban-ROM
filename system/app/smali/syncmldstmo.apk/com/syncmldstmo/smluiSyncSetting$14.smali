.class Lcom/syncmldstmo/smluiSyncSetting$14;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 551
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$14;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 554
    if-nez p2, :cond_7

    .line 555
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$14;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z
    invoke-static {v0, p3}, Lcom/syncmldstmo/smluiSyncSetting;->access$402(Lcom/syncmldstmo/smluiSyncSetting;Z)Z

    .line 556
    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 557
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$14;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z
    invoke-static {v0, p3}, Lcom/syncmldstmo/smluiSyncSetting;->access$502(Lcom/syncmldstmo/smluiSyncSetting;Z)Z

    .line 558
    :cond_f
    return-void
.end method
