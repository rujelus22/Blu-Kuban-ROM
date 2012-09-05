.class Lcom/sprint/dsa/diagnostics/PowerModeDialog$1;
.super Ljava/lang/Object;
.source "PowerModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/diagnostics/PowerModeDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;)Lcom/sprint/dsa/diagnostics/PowerModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Lcom/sprint/dsa/diagnostics/PowerModeDialog;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/diagnostics/PowerModeDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$1;->val$dialog:Lcom/sprint/dsa/diagnostics/PowerModeDialog;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$1;->val$dialog:Lcom/sprint/dsa/diagnostics/PowerModeDialog;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onApply()V

    .line 46
    return-void
.end method
