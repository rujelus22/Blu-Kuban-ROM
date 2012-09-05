.class Lcom/sprint/w/installer/PackInstaller$16;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$16;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$16;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    .line 1609
    return-void
.end method
