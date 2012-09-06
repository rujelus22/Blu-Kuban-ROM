.class Landroid/support/place/connector/ConnectorRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/ConnectorRegistryRpc$OnListConnectors;


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/ConnectorRegistry;

.field final synthetic val$result:Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry;Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$1;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistry$1;->val$result:Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListConnectors(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$1;->val$result:Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;

    invoke-interface {v0, p1}, Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;->onListConnectors(Ljava/util/List;)V

    .line 55
    return-void
.end method
