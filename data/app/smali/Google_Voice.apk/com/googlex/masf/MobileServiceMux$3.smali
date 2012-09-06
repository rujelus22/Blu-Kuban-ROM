.class Lcom/googlex/masf/MobileServiceMux$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlex/masf/MobileServiceMux;

.field final synthetic val$immediate:Z

.field final synthetic val$request:Lcom/googlex/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/masf/protocol/Request;Z)V
    .registers 4

    iput-object p1, p0, Lcom/googlex/masf/MobileServiceMux$3;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/googlex/masf/MobileServiceMux$3;->val$request:Lcom/googlex/masf/protocol/Request;

    iput-boolean p3, p0, Lcom/googlex/masf/MobileServiceMux$3;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$3;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$3;->val$request:Lcom/googlex/masf/protocol/Request;

    iget-boolean v2, p0, Lcom/googlex/masf/MobileServiceMux$3;->val$immediate:Z

    invoke-virtual {v0, v1, v2}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;Z)V

    return-void
.end method
