.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_d

    .line 2009
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, p2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setLanguageIndex(I)V

    .line 2010
    :cond_d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2011
    return-void
.end method
