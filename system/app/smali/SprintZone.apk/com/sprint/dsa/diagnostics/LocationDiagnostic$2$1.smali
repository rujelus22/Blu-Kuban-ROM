.class Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2$1;
.super Ljava/lang/Object;
.source "LocationDiagnostic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2$1;->this$1:Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2$1;->this$1:Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;

    #getter for: Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->this$0:Lcom/sprint/dsa/diagnostics/LocationDiagnostic;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;->access$0(Lcom/sprint/dsa/diagnostics/LocationDiagnostic$2;)Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;->fireStatusChange()V

    .line 117
    return-void
.end method
