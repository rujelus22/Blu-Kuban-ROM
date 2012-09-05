.class Lcom/sprint/w/installer/SprintIdHome$7;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdHome;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$7;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dlg"
    .parameter "whichButton"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$7;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->dismissDialog(I)V

    .line 294
    return-void
.end method
