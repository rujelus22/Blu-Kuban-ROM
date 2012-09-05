.class Lcom/syncmldstmo/smluiSyncSetting$7;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 480
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$7;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 484
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$7;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->InputText:Ljava/lang/String;
    invoke-static {v1}, Lcom/syncmldstmo/smluiSyncSetting;->access$300(Lcom/syncmldstmo/smluiSyncSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    .local v0, cnt:I
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$7;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/smluiSyncSetting;->testAddContact(I)V

    .line 486
    return-void
.end method
