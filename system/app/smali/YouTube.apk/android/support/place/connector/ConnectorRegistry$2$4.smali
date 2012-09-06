.class Landroid/support/place/connector/ConnectorRegistry$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/ConnectorRegistry$ListenerTask;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/ConnectorRegistry$2;

.field final synthetic val$connector:Landroid/support/place/connector/ConnectorInfo;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry$2;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$2$4;->this$1:Landroid/support/place/connector/ConnectorRegistry$2;

    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistry$2$4;->val$connector:Landroid/support/place/connector/ConnectorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2$4;->val$connector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {p1, v0}, Landroid/support/place/connector/ConnectorRegistry$Listener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V

    .line 127
    return-void
.end method
