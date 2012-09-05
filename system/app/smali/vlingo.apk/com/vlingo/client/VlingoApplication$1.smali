.class Lcom/vlingo/client/VlingoApplication$1;
.super Ljava/lang/Object;
.source "VlingoApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/VlingoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/VlingoApplication;


# direct methods
.method constructor <init>(Lcom/vlingo/client/VlingoApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/vlingo/client/VlingoApplication$1;->this$0:Lcom/vlingo/client/VlingoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication$1;->this$0:Lcom/vlingo/client/VlingoApplication;

    #calls: Lcom/vlingo/client/VlingoApplication;->populateContactMapping()V
    invoke-static {v0}, Lcom/vlingo/client/VlingoApplication;->access$000(Lcom/vlingo/client/VlingoApplication;)V

    .line 226
    return-void
.end method
