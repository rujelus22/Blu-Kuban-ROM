.class Lcom/samsung/wimax/napid/WorkMode$2;
.super Ljava/lang/Object;
.source "WorkMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/napid/WorkMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/WorkMode;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/WorkMode;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/wimax/napid/WorkMode$2;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/wimax/napid/WorkMode$2;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/WorkMode;->showDialog(I)V

    .line 82
    return-void
.end method
