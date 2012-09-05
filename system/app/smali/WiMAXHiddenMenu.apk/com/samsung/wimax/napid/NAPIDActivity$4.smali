.class Lcom/samsung/wimax/napid/NAPIDActivity$4;
.super Ljava/lang/Object;
.source "NAPIDActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/NAPIDActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$4;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$4;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->showDialog(I)V

    .line 734
    return-void
.end method
