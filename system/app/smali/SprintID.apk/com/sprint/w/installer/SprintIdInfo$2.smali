.class Lcom/sprint/w/installer/SprintIdInfo$2;
.super Ljava/lang/Object;
.source "SprintIdInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdInfo;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdInfo$2;->this$0:Lcom/sprint/w/installer/SprintIdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdInfo$2;->this$0:Lcom/sprint/w/installer/SprintIdInfo;

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdInfo;->finish()V

    .line 32
    return-void
.end method
