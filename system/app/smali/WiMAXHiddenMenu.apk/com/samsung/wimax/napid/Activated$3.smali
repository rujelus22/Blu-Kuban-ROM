.class Lcom/samsung/wimax/napid/Activated$3;
.super Ljava/lang/Object;
.source "Activated.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/napid/Activated;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Activated;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Activated;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/wimax/napid/Activated$3;->this$0:Lcom/samsung/wimax/napid/Activated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated$3;->this$0:Lcom/samsung/wimax/napid/Activated;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/Activated;->showDialog(I)V

    .line 374
    return-void
.end method
