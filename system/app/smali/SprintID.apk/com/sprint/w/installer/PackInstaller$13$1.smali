.class Lcom/sprint/w/installer/PackInstaller$13$1;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackInstaller$13;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller$13;)V
    .registers 2
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$13$1;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$13$1;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    .line 948
    return-void
.end method
