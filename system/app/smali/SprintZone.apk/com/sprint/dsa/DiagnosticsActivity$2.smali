.class Lcom/sprint/dsa/DiagnosticsActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DiagnosticsActivity;->onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DiagnosticsActivity;

.field private final synthetic val$diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DiagnosticsActivity;Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DiagnosticsActivity$2;->this$0:Lcom/sprint/dsa/DiagnosticsActivity;

    iput-object p2, p0, Lcom/sprint/dsa/DiagnosticsActivity$2;->val$diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity$2;->this$0:Lcom/sprint/dsa/DiagnosticsActivity;

    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsActivity$2;->val$diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DiagnosticsActivity;->updateDiagnosticView(Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    .line 114
    return-void
.end method
