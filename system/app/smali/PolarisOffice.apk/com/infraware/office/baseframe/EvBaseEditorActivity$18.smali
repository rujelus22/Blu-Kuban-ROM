.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$18;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$18;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$18;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->playKeyClickSoundEffect(Landroid/content/Context;)V

    .line 2623
    return-void
.end method
