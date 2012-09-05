.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;
.super Ljava/lang/Object;
.source "DsaDeviceProgramming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;->showRunAgainDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 222
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->showPrepairNetworkDialog()Landroid/app/ProgressDialog;

    .line 223
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$5;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->initProgramming()V

    .line 224
    return-void
.end method
