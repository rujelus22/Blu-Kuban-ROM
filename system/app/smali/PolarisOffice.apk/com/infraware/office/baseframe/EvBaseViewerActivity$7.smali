.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$7;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 2452
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2449
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$7;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceEditTextEnable()V
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$10(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    .line 2446
    return-void
.end method
