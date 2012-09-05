.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$6;
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
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$6;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 228
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 232
    :goto_3
    return-void

    .line 229
    :catch_4
    move-exception v0

    goto :goto_3
.end method
