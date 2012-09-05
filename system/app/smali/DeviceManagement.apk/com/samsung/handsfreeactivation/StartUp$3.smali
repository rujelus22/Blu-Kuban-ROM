.class Lcom/samsung/handsfreeactivation/StartUp$3;
.super Ljava/lang/Object;
.source "StartUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/StartUp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/StartUp;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/StartUp;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/StartUp$3;->this$0:Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 270
    const-string v0, "StartUp"

    const-string v1, "onClick ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method
