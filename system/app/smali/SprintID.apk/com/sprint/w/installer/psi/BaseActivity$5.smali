.class Lcom/sprint/w/installer/psi/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/BaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sprint/w/installer/psi/BaseActivity$5;->this$0:Lcom/sprint/w/installer/psi/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/psi/BaseActivity$5;->this$0:Lcom/sprint/w/installer/psi/BaseActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/BaseActivity;->finish()V

    .line 78
    return-void
.end method
