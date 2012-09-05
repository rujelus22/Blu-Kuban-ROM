.class Lcom/syncmldstmo/smluiSyncSetting$22;
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
    .line 639
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$22;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$22;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->selected:I
    invoke-static {v0, p2}, Lcom/syncmldstmo/smluiSyncSetting;->access$802(Lcom/syncmldstmo/smluiSyncSetting;I)I

    .line 643
    return-void
.end method
