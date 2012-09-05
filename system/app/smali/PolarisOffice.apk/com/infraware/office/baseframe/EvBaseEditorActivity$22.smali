.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$22;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateMsgPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->finish()V

    .line 2778
    return-void
.end method
