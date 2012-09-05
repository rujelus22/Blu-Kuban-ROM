.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$12;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontSizeOthers(I)V
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$12;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$12;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBShowIMEAfterScreenChanged:Z

    .line 1700
    return-void
.end method
