.class Lcom/sprint/w/installer/SprintIdInfo$1;
.super Ljava/lang/Object;
.source "SprintIdInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 21
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdInfo$1;->this$0:Lcom/sprint/w/installer/SprintIdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->setFirstLaunch(Z)V

    .line 24
    return-void
.end method
