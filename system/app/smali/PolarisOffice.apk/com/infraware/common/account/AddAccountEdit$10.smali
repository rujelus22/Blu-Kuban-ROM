.class Lcom/infraware/common/account/AddAccountEdit$10;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$10;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 433
    return-void
.end method
