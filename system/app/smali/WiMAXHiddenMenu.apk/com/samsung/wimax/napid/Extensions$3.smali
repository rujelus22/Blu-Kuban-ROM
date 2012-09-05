.class Lcom/samsung/wimax/napid/Extensions$3;
.super Ljava/lang/Object;
.source "Extensions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/napid/Extensions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Extensions;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 2
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/samsung/wimax/napid/Extensions$3;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$3;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/Extensions;->showDialog(I)V

    .line 662
    return-void
.end method
