.class Lcom/vlingo/client/car/util/VlingoContactAdapter$1$1;
.super Ljava/lang/Object;
.source "VlingoContactAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/util/VlingoContactAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/util/VlingoContactAdapter$1;

.field final synthetic val$contacts:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/util/VlingoContactAdapter$1;Ljava/util/Vector;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter$1$1;->this$1:Lcom/vlingo/client/car/util/VlingoContactAdapter$1;

    iput-object p2, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter$1$1;->val$contacts:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter$1$1;->this$1:Lcom/vlingo/client/car/util/VlingoContactAdapter$1;

    iget-object v0, v0, Lcom/vlingo/client/car/util/VlingoContactAdapter$1;->this$0:Lcom/vlingo/client/car/util/VlingoContactAdapter;

    iget-object v1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter$1$1;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/util/VlingoContactAdapter;->setContacts(Ljava/util/Vector;)V

    .line 63
    return-void
.end method
