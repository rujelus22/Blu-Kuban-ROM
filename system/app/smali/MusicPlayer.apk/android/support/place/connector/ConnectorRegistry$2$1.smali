.class Landroid/support/place/connector/ConnectorRegistry$2$1;
.super Ljava/lang/Object;
.source "ConnectorRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/place/connector/ConnectorRegistry$2;->queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/ConnectorRegistry$2;

.field final synthetic val$l:Landroid/support/place/connector/ConnectorRegistry$Listener;

.field final synthetic val$task:Landroid/support/place/connector/ConnectorRegistry$ListenerTask;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry$2;Landroid/support/place/connector/ConnectorRegistry$ListenerTask;Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$2$1;->this$1:Landroid/support/place/connector/ConnectorRegistry$2;

    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistry$2$1;->val$task:Landroid/support/place/connector/ConnectorRegistry$ListenerTask;

    iput-object p3, p0, Landroid/support/place/connector/ConnectorRegistry$2$1;->val$l:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2$1;->val$task:Landroid/support/place/connector/ConnectorRegistry$ListenerTask;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistry$2$1;->val$l:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-interface {v0, v1}, Landroid/support/place/connector/ConnectorRegistry$ListenerTask;->run(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 95
    return-void
.end method
