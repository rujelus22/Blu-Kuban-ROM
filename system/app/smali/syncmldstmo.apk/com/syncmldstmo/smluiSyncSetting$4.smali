.class Lcom/syncmldstmo/smluiSyncSetting$4;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 464
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$4;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$4;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->InputText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->access$302(Lcom/syncmldstmo/smluiSyncSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 472
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 476
    return-void
.end method
