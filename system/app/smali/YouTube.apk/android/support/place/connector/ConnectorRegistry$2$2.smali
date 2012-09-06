.class Landroid/support/place/connector/ConnectorRegistry$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/ConnectorRegistry$ListenerTask;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/ConnectorRegistry$2;

.field final synthetic val$allConnectors:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry$2;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$2$2;->this$1:Landroid/support/place/connector/ConnectorRegistry$2;

    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistry$2$2;->val$allConnectors:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2$2;->val$allConnectors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/support/place/connector/ConnectorRegistry$Listener;->onConnectedToRegistry(Ljava/util/List;)V

    .line 109
    return-void
.end method
