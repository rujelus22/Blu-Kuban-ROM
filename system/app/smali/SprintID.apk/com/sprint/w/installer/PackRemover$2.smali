.class Lcom/sprint/w/installer/PackRemover$2;
.super Ljava/lang/Object;
.source "PackRemover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackRemover;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackRemover;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sprint/w/installer/PackRemover$2;->this$0:Lcom/sprint/w/installer/PackRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$2;->this$0:Lcom/sprint/w/installer/PackRemover;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackRemover;->setResult(I)V

    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$2;->this$0:Lcom/sprint/w/installer/PackRemover;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackRemover;->finish()V

    .line 105
    return-void
.end method
