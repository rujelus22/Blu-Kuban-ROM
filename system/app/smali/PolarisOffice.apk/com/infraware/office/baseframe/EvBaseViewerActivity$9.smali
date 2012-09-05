.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->InitFindBar()V
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    if-eqz v0, :cond_10

    .line 390
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->drawAllContents()V

    .line 392
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
