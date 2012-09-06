.class Landroid/support/place/connector/ConnectorRegistry$2$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/ConnectorRegistry$ListenerTask;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/ConnectorRegistry$2;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry$2;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$2$5;->this$1:Landroid/support/place/connector/ConnectorRegistry$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorRegistry$Listener;->onDisconnected()V

    .line 136
    return-void
.end method
