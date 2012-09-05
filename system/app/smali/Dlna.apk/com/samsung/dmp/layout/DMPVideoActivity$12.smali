.class Lcom/samsung/dmp/layout/DMPVideoActivity$12;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$12;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->spawnSubtitle()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5700(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 1205
    return-void
.end method
